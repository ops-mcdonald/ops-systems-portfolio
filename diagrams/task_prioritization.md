flowchart TD
    A[New Task] --> B[Assess Impact]
    B --> C[Assess Urgency]
    C --> D[Assess Risk]
    D --> E[Calculate Priority Score]
    E --> F[Assign Task]
    F --> G{Task Completed?}
    G -->|Yes| H[Mark Done]
    G -->|No| I[Error Flag Raised]
