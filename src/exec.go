package main
import "time"
func Main(args map[string]interface{}) map[string]interface{} {
        time.Sleep(20 * time.Second) 
	msg := make(map[string]interface{})
	msg["message"] = "Hello  My  Nice World Sleep For long time"
	return msg
}
