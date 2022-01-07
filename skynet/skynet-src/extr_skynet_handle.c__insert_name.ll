; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_handle.c__insert_name.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_handle.c__insert_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.handle_storage = type { i32, %struct.handle_name* }
%struct.handle_name = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.handle_storage*, i8*, i32)* @_insert_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_insert_name(%struct.handle_storage* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.handle_storage*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.handle_name*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.handle_storage* %0, %struct.handle_storage** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.handle_storage*, %struct.handle_storage** %5, align 8
  %15 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %50, %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %23, %24
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %10, align 4
  %27 = load %struct.handle_storage*, %struct.handle_storage** %5, align 8
  %28 = getelementptr inbounds %struct.handle_storage, %struct.handle_storage* %27, i32 0, i32 1
  %29 = load %struct.handle_name*, %struct.handle_name** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.handle_name, %struct.handle_name* %29, i64 %31
  store %struct.handle_name* %32, %struct.handle_name** %11, align 8
  %33 = load %struct.handle_name*, %struct.handle_name** %11, align 8
  %34 = getelementptr inbounds %struct.handle_name, %struct.handle_name* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @strcmp(i32 %35, i8* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %22
  store i8* null, i8** %4, align 8
  br label %60

41:                                               ; preds = %22
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %50

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %47, %44
  br label %18

51:                                               ; preds = %18
  %52 = load i8*, i8** %6, align 8
  %53 = call i8* @skynet_strdup(i8* %52)
  store i8* %53, i8** %13, align 8
  %54 = load %struct.handle_storage*, %struct.handle_storage** %5, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @_insert_name_before(%struct.handle_storage* %54, i8* %55, i32 %56, i32 %57)
  %59 = load i8*, i8** %13, align 8
  store i8* %59, i8** %4, align 8
  br label %60

60:                                               ; preds = %51, %40
  %61 = load i8*, i8** %4, align 8
  ret i8* %61
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i8* @skynet_strdup(i8*) #1

declare dso_local i32 @_insert_name_before(%struct.handle_storage*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
