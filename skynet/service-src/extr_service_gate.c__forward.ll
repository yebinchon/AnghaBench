; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_gate.c__forward.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_gate.c__forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gate = type { i32, i32, i32, i32, %struct.skynet_context* }
%struct.skynet_context = type { i32 }
%struct.connection = type { i32, i32, i32, i32 }

@PTYPE_TAG_DONTCOPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%d data \00", align 1
@PTYPE_TEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gate*, %struct.connection*, i32)* @_forward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_forward(%struct.gate* %0, %struct.connection* %1, i32 %2) #0 {
  %4 = alloca %struct.gate*, align 8
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.skynet_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.gate* %0, %struct.gate** %4, align 8
  store %struct.connection* %1, %struct.connection** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.gate*, %struct.gate** %4, align 8
  %14 = getelementptr inbounds %struct.gate, %struct.gate* %13, i32 0, i32 4
  %15 = load %struct.skynet_context*, %struct.skynet_context** %14, align 8
  store %struct.skynet_context* %15, %struct.skynet_context** %7, align 8
  %16 = load %struct.connection*, %struct.connection** %5, align 8
  %17 = getelementptr inbounds %struct.connection, %struct.connection* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %119

22:                                               ; preds = %3
  %23 = load %struct.gate*, %struct.gate** %4, align 8
  %24 = getelementptr inbounds %struct.gate, %struct.gate* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = call i8* @skynet_malloc(i32 %28)
  store i8* %29, i8** %9, align 8
  %30 = load %struct.connection*, %struct.connection** %5, align 8
  %31 = getelementptr inbounds %struct.connection, %struct.connection* %30, i32 0, i32 1
  %32 = load %struct.gate*, %struct.gate** %4, align 8
  %33 = getelementptr inbounds %struct.gate, %struct.gate* %32, i32 0, i32 2
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @databuffer_read(i32* %31, i32* %33, i8* %34, i32 %35)
  %37 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %38 = load %struct.gate*, %struct.gate** %4, align 8
  %39 = getelementptr inbounds %struct.gate, %struct.gate* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.gate*, %struct.gate** %4, align 8
  %42 = getelementptr inbounds %struct.gate, %struct.gate* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @PTYPE_TAG_DONTCOPY, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %8, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @skynet_send(%struct.skynet_context* %37, i32 0, i32 %40, i32 %45, i32 %46, i8* %47, i32 %48)
  br label %119

50:                                               ; preds = %22
  %51 = load %struct.connection*, %struct.connection** %5, align 8
  %52 = getelementptr inbounds %struct.connection, %struct.connection* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %81

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  %57 = call i8* @skynet_malloc(i32 %56)
  store i8* %57, i8** %10, align 8
  %58 = load %struct.connection*, %struct.connection** %5, align 8
  %59 = getelementptr inbounds %struct.connection, %struct.connection* %58, i32 0, i32 1
  %60 = load %struct.gate*, %struct.gate** %4, align 8
  %61 = getelementptr inbounds %struct.gate, %struct.gate* %60, i32 0, i32 2
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @databuffer_read(i32* %59, i32* %61, i8* %62, i32 %63)
  %65 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %66 = load %struct.connection*, %struct.connection** %5, align 8
  %67 = getelementptr inbounds %struct.connection, %struct.connection* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.connection*, %struct.connection** %5, align 8
  %70 = getelementptr inbounds %struct.connection, %struct.connection* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.gate*, %struct.gate** %4, align 8
  %73 = getelementptr inbounds %struct.gate, %struct.gate* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @PTYPE_TAG_DONTCOPY, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %8, align 4
  %78 = load i8*, i8** %10, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @skynet_send(%struct.skynet_context* %65, i32 %68, i32 %71, i32 %76, i32 %77, i8* %78, i32 %79)
  br label %119

81:                                               ; preds = %50
  %82 = load %struct.gate*, %struct.gate** %4, align 8
  %83 = getelementptr inbounds %struct.gate, %struct.gate* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %118

86:                                               ; preds = %81
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 32
  %89 = call i8* @skynet_malloc(i32 %88)
  store i8* %89, i8** %11, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = load %struct.connection*, %struct.connection** %5, align 8
  %92 = getelementptr inbounds %struct.connection, %struct.connection* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @snprintf(i8* %90, i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load %struct.connection*, %struct.connection** %5, align 8
  %96 = getelementptr inbounds %struct.connection, %struct.connection* %95, i32 0, i32 1
  %97 = load %struct.gate*, %struct.gate** %4, align 8
  %98 = getelementptr inbounds %struct.gate, %struct.gate* %97, i32 0, i32 2
  %99 = load i8*, i8** %11, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @databuffer_read(i32* %96, i32* %98, i8* %102, i32 %103)
  %105 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %106 = load %struct.gate*, %struct.gate** %4, align 8
  %107 = getelementptr inbounds %struct.gate, %struct.gate* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @PTYPE_TEXT, align 4
  %110 = load i32, i32* @PTYPE_TAG_DONTCOPY, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %8, align 4
  %113 = load i8*, i8** %11, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %114, %115
  %117 = call i32 @skynet_send(%struct.skynet_context* %105, i32 0, i32 %108, i32 %111, i32 %112, i8* %113, i32 %116)
  br label %118

118:                                              ; preds = %86, %81
  br label %119

119:                                              ; preds = %21, %27, %118, %55
  ret void
}

declare dso_local i8* @skynet_malloc(i32) #1

declare dso_local i32 @databuffer_read(i32*, i32*, i8*, i32) #1

declare dso_local i32 @skynet_send(%struct.skynet_context*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
