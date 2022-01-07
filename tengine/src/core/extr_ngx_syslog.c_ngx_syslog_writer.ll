; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_syslog.c_ngx_syslog_writer.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_syslog.c_ngx_syslog_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@NGX_SYSLOG_MAX_STR = common dso_local global i32 0, align 4
@NGX_LINEFEED_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_syslog_writer(%struct.TYPE_7__* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load i32, i32* @NGX_SYSLOG_MAX_STR, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %13, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 1, i32* %14, align 4
  br label %71

27:                                               ; preds = %4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %30, 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %35 = call i32* @ngx_syslog_add_header(%struct.TYPE_6__* %34, i32* %18)
  store i32* %35, i32** %9, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = ptrtoint i32* %36 to i64
  %38 = ptrtoint i32* %18 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 4
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %12, align 4
  %42 = load i64, i64* @NGX_LINEFEED_SIZE, align 8
  %43 = load i64, i64* %8, align 8
  %44 = sub i64 %43, %42
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i32, i32* @NGX_SYSLOG_MAX_STR, align 4
  %47 = load i32, i32* %12, align 4
  %48 = sub nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = icmp ugt i64 %45, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %27
  %52 = load i32, i32* @NGX_SYSLOG_MAX_STR, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sub nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %51, %27
  %57 = load i32*, i32** %9, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32* @ngx_snprintf(i32* %57, i64 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %59)
  store i32* %60, i32** %9, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = ptrtoint i32* %62 to i64
  %64 = ptrtoint i32* %18 to i64
  %65 = sub i64 %63, %64
  %66 = sdiv exact i64 %65, 4
  %67 = trunc i64 %66 to i32
  %68 = call i32 @ngx_syslog_send(%struct.TYPE_6__* %61, i32* %18, i32 %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 0, i32* %70, align 4
  store i32 0, i32* %14, align 4
  br label %71

71:                                               ; preds = %56, %26
  %72 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %14, align 4
  switch i32 %73, label %75 [
    i32 0, label %74
    i32 1, label %74
  ]

74:                                               ; preds = %71, %71
  ret void

75:                                               ; preds = %71
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @ngx_syslog_add_header(%struct.TYPE_6__*, i32*) #2

declare dso_local i32* @ngx_snprintf(i32*, i64, i8*, i32*) #2

declare dso_local i32 @ngx_syslog_send(%struct.TYPE_6__*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
