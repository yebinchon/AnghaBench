; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c_cmd_launch.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c_cmd_launch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_context = type { i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.skynet_context*, i8*)* @cmd_launch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cmd_launch(%struct.skynet_context* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.skynet_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.skynet_context*, align 8
  %12 = alloca i32, align 4
  store %struct.skynet_context* %0, %struct.skynet_context** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strlen(i8* %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = add i64 %15, 1
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strcpy(i8* %18, i8* %19)
  store i8* %18, i8** %9, align 8
  %21 = call i8* @strsep(i8** %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %10, align 8
  %22 = call i8* @strsep(i8** %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call %struct.skynet_context* @skynet_context_new(i8* %23, i8* %24)
  store %struct.skynet_context* %25, %struct.skynet_context** %11, align 8
  %26 = load %struct.skynet_context*, %struct.skynet_context** %11, align 8
  %27 = icmp eq %struct.skynet_context* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  store i32 1, i32* %12, align 4
  br label %40

29:                                               ; preds = %2
  %30 = load %struct.skynet_context*, %struct.skynet_context** %4, align 8
  %31 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.skynet_context*, %struct.skynet_context** %11, align 8
  %34 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @id_to_hex(i8* %32, i32 %35)
  %37 = load %struct.skynet_context*, %struct.skynet_context** %4, align 8
  %38 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %3, align 8
  store i32 1, i32* %12, align 4
  br label %40

40:                                               ; preds = %29, %28
  %41 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %41)
  %42 = load i8*, i8** %3, align 8
  ret i8* %42
}

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local %struct.skynet_context* @skynet_context_new(i8*, i8*) #1

declare dso_local i32 @id_to_hex(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
