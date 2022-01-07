; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_handle.c_skynet_handle_findname.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_handle.c_skynet_handle_findname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.handle_storage = type { i32, i32, %struct.handle_name* }
%struct.handle_name = type { i32, i32 }

@H = common dso_local global %struct.handle_storage* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skynet_handle_findname(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.handle_storage*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.handle_name*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load %struct.handle_storage*, %struct.handle_storage** @H, align 8
  store %struct.handle_storage* %10, %struct.handle_storage** %3, align 8
  %11 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %12 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %11, i32 0, i32 1
  %13 = call i32 @rwlock_rlock(i32* %12)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %14 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %15 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %53, %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %7, align 4
  %27 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %28 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %27, i32 0, i32 2
  %29 = load %struct.handle_name*, %struct.handle_name** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.handle_name, %struct.handle_name* %29, i64 %31
  store %struct.handle_name* %32, %struct.handle_name** %8, align 8
  %33 = load %struct.handle_name*, %struct.handle_name** %8, align 8
  %34 = getelementptr inbounds %struct.handle_name, %struct.handle_name* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %2, align 8
  %37 = call i32 @strcmp(i32 %35, i8* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %22
  %41 = load %struct.handle_name*, %struct.handle_name** %8, align 8
  %42 = getelementptr inbounds %struct.handle_name, %struct.handle_name* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %4, align 4
  br label %54

44:                                               ; preds = %22
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %47
  br label %18

54:                                               ; preds = %40, %18
  %55 = load %struct.handle_storage*, %struct.handle_storage** %3, align 8
  %56 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %55, i32 0, i32 1
  %57 = call i32 @rwlock_runlock(i32* %56)
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @rwlock_rlock(i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @rwlock_runlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
