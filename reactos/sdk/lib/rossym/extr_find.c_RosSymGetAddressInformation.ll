; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rossym/extr_find.c_RosSymGetAddressInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rossym/extr_find.c_RosSymGetAddressInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32*, i32* }
%struct.TYPE_7__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"RelativeAddress = 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Uninitialized RosSymInfo\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"None of the requested information was found!\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RosSymGetAddressInformation(%struct.TYPE_6__* %0, i32 %1, i32* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %5
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %26, %21, %5
  %37 = call i32 @DPRINT1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %6, align 4
  br label %112

39:                                               ; preds = %31
  %40 = load i32*, i32** %9, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** %10, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i8*, i8** %11, align 8
  %47 = icmp ne i8* %46, null
  br label %48

48:                                               ; preds = %45, %42, %39
  %49 = phi i1 [ true, %42 ], [ true, %39 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @ASSERT(i32 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call %struct.TYPE_7__* @FindEntry(%struct.TYPE_6__* %52, i32 %53)
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %12, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %56 = icmp eq %struct.TYPE_7__* null, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %6, align 4
  br label %112

60:                                               ; preds = %48
  %61 = load i32*, i32** %9, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32*, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %63, %60
  %69 = load i8*, i8** %10, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %89

71:                                               ; preds = %68
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = bitcast i32* %79 to i8*
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  store i8* %84, i8** %13, align 8
  br label %85

85:                                               ; preds = %76, %71
  %86 = load i8*, i8** %10, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = call i32 @strcpy(i8* %86, i8* %87)
  br label %89

89:                                               ; preds = %85, %68
  %90 = load i8*, i8** %11, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %110

92:                                               ; preds = %89
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = bitcast i32* %100 to i8*
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  store i8* %105, i8** %14, align 8
  br label %106

106:                                              ; preds = %97, %92
  %107 = load i8*, i8** %11, align 8
  %108 = load i8*, i8** %14, align 8
  %109 = call i32 @strcpy(i8* %107, i8* %108)
  br label %110

110:                                              ; preds = %106, %89
  %111 = load i32, i32* @TRUE, align 4
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %110, %57, %36
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_7__* @FindEntry(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
