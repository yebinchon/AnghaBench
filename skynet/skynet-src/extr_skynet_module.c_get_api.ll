; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_module.c_get_api.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_module.c_get_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_module = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.skynet_module*, i8*)* @get_api to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_api(%struct.skynet_module* %0, i8* %1) #0 {
  %3 = alloca %struct.skynet_module*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.skynet_module* %0, %struct.skynet_module** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.skynet_module*, %struct.skynet_module** %3, align 8
  %11 = getelementptr inbounds %struct.skynet_module, %struct.skynet_module* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i64 @strlen(i8* %12)
  store i64 %13, i64* %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = add i64 %16, %17
  %19 = add i64 %18, 1
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %22 = load %struct.skynet_module*, %struct.skynet_module** %3, align 8
  %23 = getelementptr inbounds %struct.skynet_module, %struct.skynet_module* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @memcpy(i8* %21, i8* %24, i64 %25)
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds i8, i8* %21, i64 %27
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, 1
  %32 = call i32 @memcpy(i8* %28, i8* %29, i64 %31)
  %33 = call i8* @strrchr(i8* %21, i8 signext 46)
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  store i8* %21, i8** %9, align 8
  br label %40

37:                                               ; preds = %2
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  store i8* %39, i8** %9, align 8
  br label %40

40:                                               ; preds = %37, %36
  %41 = load %struct.skynet_module*, %struct.skynet_module** %3, align 8
  %42 = getelementptr inbounds %struct.skynet_module, %struct.skynet_module* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i8* @dlsym(i32 %43, i8* %44)
  %46 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %46)
  ret i8* %45
}

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @dlsym(i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
