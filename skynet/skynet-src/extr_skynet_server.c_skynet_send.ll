; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c_skynet_send.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c_skynet_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_context = type { i64 }
%struct.remote_message = type { i64, i64, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.skynet_message = type { i32, i64, i8*, i64 }

@MESSAGE_TYPE_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"The message to %x is too large\00", align 1
@PTYPE_TAG_DONTCOPY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Destination address can't be 0\00", align 1
@MESSAGE_TYPE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skynet_send(%struct.skynet_context* %0, i64 %1, i64 %2, i32 %3, i32 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.skynet_context*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.remote_message*, align 8
  %17 = alloca %struct.skynet_message, align 8
  store %struct.skynet_context* %0, %struct.skynet_context** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %18 = load i64, i64* %15, align 8
  %19 = load i64, i64* @MESSAGE_TYPE_MASK, align 8
  %20 = and i64 %18, %19
  %21 = load i64, i64* %15, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %7
  %24 = load %struct.skynet_context*, %struct.skynet_context** %9, align 8
  %25 = load i64, i64* %11, align 8
  %26 = call i32 (%struct.skynet_context*, i8*, ...) @skynet_error(%struct.skynet_context* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @PTYPE_TAG_DONTCOPY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i8*, i8** %14, align 8
  %33 = call i32 @skynet_free(i8* %32)
  br label %34

34:                                               ; preds = %31, %23
  store i32 -2, i32* %8, align 4
  br label %103

35:                                               ; preds = %7
  %36 = load %struct.skynet_context*, %struct.skynet_context** %9, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @_filter_args(%struct.skynet_context* %36, i32 %37, i32* %13, i8** %14, i64* %15)
  %39 = load i64, i64* %10, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.skynet_context*, %struct.skynet_context** %9, align 8
  %43 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %10, align 8
  br label %45

45:                                               ; preds = %41, %35
  %46 = load i64, i64* %11, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load i8*, i8** %14, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.skynet_context*, %struct.skynet_context** %9, align 8
  %53 = call i32 (%struct.skynet_context*, i8*, ...) @skynet_error(%struct.skynet_context* %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i8*, i8** %14, align 8
  %55 = call i32 @skynet_free(i8* %54)
  store i32 -1, i32* %8, align 4
  br label %103

56:                                               ; preds = %48
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %8, align 4
  br label %103

58:                                               ; preds = %45
  %59 = load i64, i64* %11, align 8
  %60 = call i64 @skynet_harbor_message_isremote(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %58
  %63 = call %struct.remote_message* @skynet_malloc(i32 32)
  store %struct.remote_message* %63, %struct.remote_message** %16, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load %struct.remote_message*, %struct.remote_message** %16, align 8
  %66 = getelementptr inbounds %struct.remote_message, %struct.remote_message* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i64 %64, i64* %67, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = load %struct.remote_message*, %struct.remote_message** %16, align 8
  %70 = getelementptr inbounds %struct.remote_message, %struct.remote_message* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* @MESSAGE_TYPE_MASK, align 8
  %73 = and i64 %71, %72
  %74 = load %struct.remote_message*, %struct.remote_message** %16, align 8
  %75 = getelementptr inbounds %struct.remote_message, %struct.remote_message* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load i64, i64* %15, align 8
  %77 = load i64, i64* @MESSAGE_TYPE_SHIFT, align 8
  %78 = lshr i64 %76, %77
  %79 = load %struct.remote_message*, %struct.remote_message** %16, align 8
  %80 = getelementptr inbounds %struct.remote_message, %struct.remote_message* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.remote_message*, %struct.remote_message** %16, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @skynet_harbor_send(%struct.remote_message* %81, i64 %82, i32 %83)
  br label %101

85:                                               ; preds = %58
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds %struct.skynet_message, %struct.skynet_message* %17, i32 0, i32 3
  store i64 %86, i64* %87, align 8
  %88 = load i32, i32* %13, align 4
  %89 = getelementptr inbounds %struct.skynet_message, %struct.skynet_message* %17, i32 0, i32 0
  store i32 %88, i32* %89, align 8
  %90 = load i8*, i8** %14, align 8
  %91 = getelementptr inbounds %struct.skynet_message, %struct.skynet_message* %17, i32 0, i32 2
  store i8* %90, i8** %91, align 8
  %92 = load i64, i64* %15, align 8
  %93 = getelementptr inbounds %struct.skynet_message, %struct.skynet_message* %17, i32 0, i32 1
  store i64 %92, i64* %93, align 8
  %94 = load i64, i64* %11, align 8
  %95 = call i64 @skynet_context_push(i64 %94, %struct.skynet_message* %17)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %85
  %98 = load i8*, i8** %14, align 8
  %99 = call i32 @skynet_free(i8* %98)
  store i32 -1, i32* %8, align 4
  br label %103

100:                                              ; preds = %85
  br label %101

101:                                              ; preds = %100, %62
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %101, %97, %56, %51, %34
  %104 = load i32, i32* %8, align 4
  ret i32 %104
}

declare dso_local i32 @skynet_error(%struct.skynet_context*, i8*, ...) #1

declare dso_local i32 @skynet_free(i8*) #1

declare dso_local i32 @_filter_args(%struct.skynet_context*, i32, i32*, i8**, i64*) #1

declare dso_local i64 @skynet_harbor_message_isremote(i64) #1

declare dso_local %struct.remote_message* @skynet_malloc(i32) #1

declare dso_local i32 @skynet_harbor_send(%struct.remote_message*, i64, i32) #1

declare dso_local i64 @skynet_context_push(i64, %struct.skynet_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
