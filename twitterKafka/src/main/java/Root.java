public class Root {

    public static void main(String arg[]){
        System.out.println("**********  Start Architecture");

        // Creating Kafka Topic
        KafkaTopicCreation topic = new KafkaTopicCreation();

        // Launching Twitter ApiConnector
        TwitterKafkaProducer connect = new TwitterKafkaProducer();

        // Launching Consumer
        TwitterKafkaConsumer consume = new TwitterKafkaConsumer();
    }
}
