; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c_skynet_sendname.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c_skynet_sendname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_context = type { i64 }
%struct.remote_message = type { i64, i64, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@PTYPE_TAG_DONTCOPY = common dso_local global i32 0, align 4
@MESSAGE_TYPE_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"The message to %s is too large\00", align 1
@MESSAGE_TYPE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skynet_sendname(%struct.skynet_context* %0, i64 %1, i8* %2, i32 %3, i32 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.skynet_context*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.remote_message*, align 8
  store %struct.skynet_context* %0, %struct.skynet_context** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %7
  %21 = load %struct.skynet_context*, %struct.skynet_context** %9, align 8
  %22 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  br label %24

24:                                               ; preds = %20, %7
  store i64 0, i64* %16, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 58
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i8*, i8** %11, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = call i64 @strtoul(i8* %32, i32* null, i32 16)
  store i64 %33, i64* %16, align 8
  br label %107

34:                                               ; preds = %24
  %35 = load i8*, i8** %11, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 46
  br i1 %39, label %40, label %56

40:                                               ; preds = %34
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = call i64 @skynet_handle_findname(i8* %42)
  store i64 %43, i64* %16, align 8
  %44 = load i64, i64* %16, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @PTYPE_TAG_DONTCOPY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i8*, i8** %14, align 8
  %53 = call i32 @skynet_free(i8* %52)
  br label %54

54:                                               ; preds = %51, %46
  store i32 -1, i32* %8, align 4
  br label %116

55:                                               ; preds = %40
  br label %106

56:                                               ; preds = %34
  %57 = load i64, i64* %15, align 8
  %58 = load i64, i64* @MESSAGE_TYPE_MASK, align 8
  %59 = and i64 %57, %58
  %60 = load i64, i64* %15, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = load %struct.skynet_context*, %struct.skynet_context** %9, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @skynet_error(%struct.skynet_context* %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %64)
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @PTYPE_TAG_DONTCOPY, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i8*, i8** %14, align 8
  %72 = call i32 @skynet_free(i8* %71)
  br label %73

73:                                               ; preds = %70, %62
  store i32 -2, i32* %8, align 4
  br label %116

74:                                               ; preds = %56
  %75 = load %struct.skynet_context*, %struct.skynet_context** %9, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @_filter_args(%struct.skynet_context* %75, i32 %76, i32* %13, i8** %14, i64* %15)
  %78 = call %struct.remote_message* @skynet_malloc(i32 40)
  store %struct.remote_message* %78, %struct.remote_message** %17, align 8
  %79 = load %struct.remote_message*, %struct.remote_message** %17, align 8
  %80 = getelementptr inbounds %struct.remote_message, %struct.remote_message* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @copy_name(i32 %82, i8* %83)
  %85 = load %struct.remote_message*, %struct.remote_message** %17, align 8
  %86 = getelementptr inbounds %struct.remote_message, %struct.remote_message* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i64 0, i64* %87, align 8
  %88 = load i8*, i8** %14, align 8
  %89 = load %struct.remote_message*, %struct.remote_message** %17, align 8
  %90 = getelementptr inbounds %struct.remote_message, %struct.remote_message* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load i64, i64* %15, align 8
  %92 = load i64, i64* @MESSAGE_TYPE_MASK, align 8
  %93 = and i64 %91, %92
  %94 = load %struct.remote_message*, %struct.remote_message** %17, align 8
  %95 = getelementptr inbounds %struct.remote_message, %struct.remote_message* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load i64, i64* %15, align 8
  %97 = load i64, i64* @MESSAGE_TYPE_SHIFT, align 8
  %98 = lshr i64 %96, %97
  %99 = load %struct.remote_message*, %struct.remote_message** %17, align 8
  %100 = getelementptr inbounds %struct.remote_message, %struct.remote_message* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  %101 = load %struct.remote_message*, %struct.remote_message** %17, align 8
  %102 = load i64, i64* %10, align 8
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @skynet_harbor_send(%struct.remote_message* %101, i64 %102, i32 %103)
  %105 = load i32, i32* %13, align 4
  store i32 %105, i32* %8, align 4
  br label %116

106:                                              ; preds = %55
  br label %107

107:                                              ; preds = %106, %30
  %108 = load %struct.skynet_context*, %struct.skynet_context** %9, align 8
  %109 = load i64, i64* %10, align 8
  %110 = load i64, i64* %16, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i8*, i8** %14, align 8
  %114 = load i64, i64* %15, align 8
  %115 = call i32 @skynet_send(%struct.skynet_context* %108, i64 %109, i64 %110, i32 %111, i32 %112, i8* %113, i64 %114)
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %107, %74, %73, %54
  %117 = load i32, i32* %8, align 4
  ret i32 %117
}

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i64 @skynet_handle_findname(i8*) #1

declare dso_local i32 @skynet_free(i8*) #1

declare dso_local i32 @skynet_error(%struct.skynet_context*, i8*, i8*) #1

declare dso_local i32 @_filter_args(%struct.skynet_context*, i32, i32*, i8**, i64*) #1

declare dso_local %struct.remote_message* @skynet_malloc(i32) #1

declare dso_local i32 @copy_name(i32, i8*) #1

declare dso_local i32 @skynet_harbor_send(%struct.remote_message*, i64, i32) #1

declare dso_local i32 @skynet_send(%struct.skynet_context*, i64, i64, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
