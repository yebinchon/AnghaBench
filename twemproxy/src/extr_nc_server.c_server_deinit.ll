; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_deinit.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array = type { i32 }
%struct.server = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_deinit(%struct.array* %0) #0 {
  %2 = alloca %struct.array*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.server*, align 8
  store %struct.array* %0, %struct.array** %2, align 8
  store i64 0, i64* %3, align 8
  %6 = load %struct.array*, %struct.array** %2, align 8
  %7 = call i64 @array_n(%struct.array* %6)
  store i64 %7, i64* %4, align 8
  br label %8

8:                                                ; preds = %28, %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %8
  %13 = load %struct.array*, %struct.array** %2, align 8
  %14 = call %struct.server* @array_pop(%struct.array* %13)
  store %struct.server* %14, %struct.server** %5, align 8
  %15 = load %struct.server*, %struct.server** %5, align 8
  %16 = getelementptr inbounds %struct.server, %struct.server* %15, i32 0, i32 1
  %17 = call i64 @TAILQ_EMPTY(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load %struct.server*, %struct.server** %5, align 8
  %21 = getelementptr inbounds %struct.server, %struct.server* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br label %24

24:                                               ; preds = %19, %12
  %25 = phi i1 [ false, %12 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  br label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %3, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %3, align 8
  br label %8

31:                                               ; preds = %8
  %32 = load %struct.array*, %struct.array** %2, align 8
  %33 = call i32 @array_deinit(%struct.array* %32)
  ret void
}

declare dso_local i64 @array_n(%struct.array*) #1

declare dso_local %struct.server* @array_pop(%struct.array*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @array_deinit(%struct.array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
