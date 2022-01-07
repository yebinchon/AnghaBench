; ModuleID = '/home/carl/AnghaBench/sway/sway/config/extr_seat.c_seat_config_get_attachment.c'
source_filename = "/home/carl/AnghaBench/sway/sway/config/extr_seat.c_seat_config_get_attachment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seat_attachment_config = type { i32 }
%struct.seat_config = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.seat_attachment_config** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.seat_attachment_config* @seat_config_get_attachment(%struct.seat_config* %0, i8* %1) #0 {
  %3 = alloca %struct.seat_attachment_config*, align 8
  %4 = alloca %struct.seat_config*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.seat_attachment_config*, align 8
  store %struct.seat_config* %0, %struct.seat_config** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %35, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.seat_config*, %struct.seat_config** %4, align 8
  %11 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %8
  %17 = load %struct.seat_config*, %struct.seat_config** %4, align 8
  %18 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.seat_attachment_config**, %struct.seat_attachment_config*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.seat_attachment_config*, %struct.seat_attachment_config** %21, i64 %23
  %25 = load %struct.seat_attachment_config*, %struct.seat_attachment_config** %24, align 8
  store %struct.seat_attachment_config* %25, %struct.seat_attachment_config** %7, align 8
  %26 = load %struct.seat_attachment_config*, %struct.seat_attachment_config** %7, align 8
  %27 = getelementptr inbounds %struct.seat_attachment_config, %struct.seat_attachment_config* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @strcmp(i32 %28, i8* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %16
  %33 = load %struct.seat_attachment_config*, %struct.seat_attachment_config** %7, align 8
  store %struct.seat_attachment_config* %33, %struct.seat_attachment_config** %3, align 8
  br label %39

34:                                               ; preds = %16
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %8

38:                                               ; preds = %8
  store %struct.seat_attachment_config* null, %struct.seat_attachment_config** %3, align 8
  br label %39

39:                                               ; preds = %38, %32
  %40 = load %struct.seat_attachment_config*, %struct.seat_attachment_config** %3, align 8
  ret %struct.seat_attachment_config* %40
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
