; ModuleID = '/home/carl/AnghaBench/sway/sway/config/extr_seat.c_free_seat_config.c'
source_filename = "/home/carl/AnghaBench/sway/sway/config/extr_seat.c_free_seat_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seat_config = type { %struct.TYPE_3__, %struct.TYPE_4__*, %struct.seat_config* }
%struct.TYPE_3__ = type { %struct.seat_config* }
%struct.TYPE_4__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_seat_config(%struct.seat_config* %0) #0 {
  %2 = alloca %struct.seat_config*, align 8
  %3 = alloca i32, align 4
  store %struct.seat_config* %0, %struct.seat_config** %2, align 8
  %4 = load %struct.seat_config*, %struct.seat_config** %2, align 8
  %5 = icmp ne %struct.seat_config* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %46

7:                                                ; preds = %1
  %8 = load %struct.seat_config*, %struct.seat_config** %2, align 8
  %9 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %8, i32 0, i32 2
  %10 = load %struct.seat_config*, %struct.seat_config** %9, align 8
  %11 = call i32 @free(%struct.seat_config* %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %31, %7
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.seat_config*, %struct.seat_config** %2, align 8
  %15 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %12
  %21 = load %struct.seat_config*, %struct.seat_config** %2, align 8
  %22 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @seat_attachment_config_free(i32 %29)
  br label %31

31:                                               ; preds = %20
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %12

34:                                               ; preds = %12
  %35 = load %struct.seat_config*, %struct.seat_config** %2, align 8
  %36 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = call i32 @list_free(%struct.TYPE_4__* %37)
  %39 = load %struct.seat_config*, %struct.seat_config** %2, align 8
  %40 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.seat_config*, %struct.seat_config** %41, align 8
  %43 = call i32 @free(%struct.seat_config* %42)
  %44 = load %struct.seat_config*, %struct.seat_config** %2, align 8
  %45 = call i32 @free(%struct.seat_config* %44)
  br label %46

46:                                               ; preds = %34, %6
  ret void
}

declare dso_local i32 @free(%struct.seat_config*) #1

declare dso_local i32 @seat_attachment_config_free(i32) #1

declare dso_local i32 @list_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
