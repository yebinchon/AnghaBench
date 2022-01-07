; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c_cmd_name.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c_cmd_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_context = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Can't set global name %s in C\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.skynet_context*, i8*)* @cmd_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cmd_name(%struct.skynet_context* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.skynet_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.skynet_context* %0, %struct.skynet_context** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strlen(i8* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @sscanf(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %22)
  %25 = getelementptr inbounds i8, i8* %22, i64 0
  %26 = load i8, i8* %25, align 16
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 58
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %49

30:                                               ; preds = %2
  %31 = getelementptr inbounds i8, i8* %22, i64 1
  %32 = call i64 @strtoul(i8* %31, i32* null, i32 16)
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i8* null, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %49

36:                                               ; preds = %30
  %37 = getelementptr inbounds i8, i8* %18, i64 0
  %38 = load i8, i8* %37, align 16
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 46
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds i8, i8* %18, i64 1
  %44 = call i8* @skynet_handle_namehandle(i64 %42, i8* %43)
  store i8* %44, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %49

45:                                               ; preds = %36
  %46 = load %struct.skynet_context*, %struct.skynet_context** %4, align 8
  %47 = call i32 @skynet_error(%struct.skynet_context* %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  br label %48

48:                                               ; preds = %45
  store i8* null, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %49

49:                                               ; preds = %48, %41, %35, %29
  %50 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i8*, i8** %3, align 8
  ret i8* %51
}

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i8* @skynet_handle_namehandle(i64, i8*) #1

declare dso_local i32 @skynet_error(%struct.skynet_context*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
