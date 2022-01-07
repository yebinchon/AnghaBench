; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_gate.c_gate_init.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_gate.c_gate_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gate = type { i32, i32, i32, %struct.TYPE_3__*, i32, %struct.skynet_context*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.skynet_context = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"%c %s %s %d %d\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid gate parm %s\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Need max connection\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Invalid data header style\00", align 1
@PTYPE_CLIENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Invalid watchdog %s\00", align 1
@_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gate_init(%struct.gate* %0, %struct.skynet_context* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gate*, align 8
  %6 = alloca %struct.skynet_context*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.gate* %0, %struct.gate** %5, align 8
  store %struct.skynet_context* %1, %struct.skynet_context** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %143

21:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %10, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  %29 = load i32, i32* %9, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @sscanf(i8* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %28, i8* %31, i32* %13, i32* %8)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %40

36:                                               ; preds = %21
  %37 = load %struct.skynet_context*, %struct.skynet_context** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 (%struct.skynet_context*, i8*, ...) @skynet_error(%struct.skynet_context* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %141

40:                                               ; preds = %21
  %41 = load i32, i32* %8, align 4
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.skynet_context*, %struct.skynet_context** %6, align 8
  %45 = call i32 (%struct.skynet_context*, i8*, ...) @skynet_error(%struct.skynet_context* %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %141

46:                                               ; preds = %40
  %47 = load i8, i8* %14, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 83
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i8, i8* %14, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 76
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.skynet_context*, %struct.skynet_context** %6, align 8
  %56 = call i32 (%struct.skynet_context*, i8*, ...) @skynet_error(%struct.skynet_context* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %141

57:                                               ; preds = %50, %46
  %58 = load i32, i32* %13, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @PTYPE_CLIENT, align 4
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %60, %57
  %63 = getelementptr inbounds i8, i8* %28, i64 0
  %64 = load i8, i8* %63, align 16
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 33
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.gate*, %struct.gate** %5, align 8
  %69 = getelementptr inbounds %struct.gate, %struct.gate* %68, i32 0, i32 6
  store i32 0, i32* %69, align 8
  br label %83

70:                                               ; preds = %62
  %71 = load %struct.skynet_context*, %struct.skynet_context** %6, align 8
  %72 = call i32 @skynet_queryname(%struct.skynet_context* %71, i8* %28)
  %73 = load %struct.gate*, %struct.gate** %5, align 8
  %74 = getelementptr inbounds %struct.gate, %struct.gate* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 8
  %75 = load %struct.gate*, %struct.gate** %5, align 8
  %76 = getelementptr inbounds %struct.gate, %struct.gate* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load %struct.skynet_context*, %struct.skynet_context** %6, align 8
  %81 = call i32 (%struct.skynet_context*, i8*, ...) @skynet_error(%struct.skynet_context* %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %28)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %141

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %67
  %84 = load %struct.skynet_context*, %struct.skynet_context** %6, align 8
  %85 = load %struct.gate*, %struct.gate** %5, align 8
  %86 = getelementptr inbounds %struct.gate, %struct.gate* %85, i32 0, i32 5
  store %struct.skynet_context* %84, %struct.skynet_context** %86, align 8
  %87 = load %struct.gate*, %struct.gate** %5, align 8
  %88 = getelementptr inbounds %struct.gate, %struct.gate* %87, i32 0, i32 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @hashid_init(i32* %88, i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = trunc i64 %93 to i32
  %95 = call %struct.TYPE_3__* @skynet_malloc(i32 %94)
  %96 = load %struct.gate*, %struct.gate** %5, align 8
  %97 = getelementptr inbounds %struct.gate, %struct.gate* %96, i32 0, i32 3
  store %struct.TYPE_3__* %95, %struct.TYPE_3__** %97, align 8
  %98 = load %struct.gate*, %struct.gate** %5, align 8
  %99 = getelementptr inbounds %struct.gate, %struct.gate* %98, i32 0, i32 3
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 4
  %104 = trunc i64 %103 to i32
  %105 = call i32 @memset(%struct.TYPE_3__* %100, i32 0, i32 %104)
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.gate*, %struct.gate** %5, align 8
  %108 = getelementptr inbounds %struct.gate, %struct.gate* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  store i32 0, i32* %17, align 4
  br label %109

109:                                              ; preds = %121, %83
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %109
  %114 = load %struct.gate*, %struct.gate** %5, align 8
  %115 = getelementptr inbounds %struct.gate, %struct.gate* %114, i32 0, i32 3
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  store i32 -1, i32* %120, align 4
  br label %121

121:                                              ; preds = %113
  %122 = load i32, i32* %17, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %17, align 4
  br label %109

124:                                              ; preds = %109
  %125 = load i32, i32* %13, align 4
  %126 = load %struct.gate*, %struct.gate** %5, align 8
  %127 = getelementptr inbounds %struct.gate, %struct.gate* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load i8, i8* %14, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 83
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 2, i32 4
  %133 = load %struct.gate*, %struct.gate** %5, align 8
  %134 = getelementptr inbounds %struct.gate, %struct.gate* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load %struct.skynet_context*, %struct.skynet_context** %6, align 8
  %136 = load %struct.gate*, %struct.gate** %5, align 8
  %137 = load i32, i32* @_cb, align 4
  %138 = call i32 @skynet_callback(%struct.skynet_context* %135, %struct.gate* %136, i32 %137)
  %139 = load %struct.gate*, %struct.gate** %5, align 8
  %140 = call i32 @start_listen(%struct.gate* %139, i8* %31)
  store i32 %140, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %141

141:                                              ; preds = %124, %79, %54, %43, %36
  %142 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %142)
  br label %143

143:                                              ; preds = %141, %20
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @skynet_error(%struct.skynet_context*, i8*, ...) #1

declare dso_local i32 @skynet_queryname(%struct.skynet_context*, i8*) #1

declare dso_local i32 @hashid_init(i32*, i32) #1

declare dso_local %struct.TYPE_3__* @skynet_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @skynet_callback(%struct.skynet_context*, %struct.gate*, i32) #1

declare dso_local i32 @start_listen(%struct.gate*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
