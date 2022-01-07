; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_ldebug.c_auxgetinfo.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_ldebug.c_auxgetinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i8*, i32*, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__, %struct.TYPE_16__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_21__ = type { i32 }

@CIST_TAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_21__*)* @auxgetinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auxgetinfo(i32* %0, i8* %1, %struct.TYPE_19__* %2, %struct.TYPE_20__* %3, %struct.TYPE_21__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %9, align 8
  store %struct.TYPE_21__* %4, %struct.TYPE_21__** %10, align 8
  store i32 1, i32* %11, align 4
  br label %12

12:                                               ; preds = %113, %5
  %13 = load i8*, i8** %7, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %116

16:                                               ; preds = %12
  %17 = load i8*, i8** %7, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %111 [
    i32 83, label %20
    i32 108, label %24
    i32 117, label %39
    i32 116, label %78
    i32 110, label %92
    i32 76, label %110
    i32 102, label %110
  ]

20:                                               ; preds = %16
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %23 = call i32 @funcinfo(%struct.TYPE_19__* %21, %struct.TYPE_20__* %22)
  br label %112

24:                                               ; preds = %16
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %26 = icmp ne %struct.TYPE_21__* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %29 = call i32 @isLua(%struct.TYPE_21__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %33 = call i32 @currentline(%struct.TYPE_21__* %32)
  br label %35

34:                                               ; preds = %27, %24
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i32 [ %33, %31 ], [ -1, %34 ]
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %112

39:                                               ; preds = %16
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %41 = icmp eq %struct.TYPE_20__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %48

43:                                               ; preds = %39
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  br label %48

48:                                               ; preds = %43, %42
  %49 = phi i32 [ 0, %42 ], [ %47, %43 ]
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %53 = call i32 @noLuaClosure(%struct.TYPE_20__* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 5
  store i32 0, i32* %59, align 8
  br label %77

60:                                               ; preds = %48
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %60, %55
  br label %112

78:                                               ; preds = %16
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %80 = icmp ne %struct.TYPE_21__* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @CIST_TAIL, align 4
  %86 = and i32 %84, %85
  br label %88

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87, %81
  %89 = phi i32 [ %86, %81 ], [ 0, %87 ]
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  br label %112

92:                                               ; preds = %16
  %93 = load i32*, i32** %6, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 4
  %97 = call i8* @getfuncname(i32* %93, %struct.TYPE_21__* %94, i32** %96)
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 3
  store i8* %97, i8** %99, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 3
  %102 = load i8*, i8** %101, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %92
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %106, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 4
  store i32* null, i32** %108, align 8
  br label %109

109:                                              ; preds = %104, %92
  br label %112

110:                                              ; preds = %16, %16
  br label %112

111:                                              ; preds = %16
  store i32 0, i32* %11, align 4
  br label %112

112:                                              ; preds = %111, %110, %109, %88, %77, %35, %20
  br label %113

113:                                              ; preds = %112
  %114 = load i8*, i8** %7, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %7, align 8
  br label %12

116:                                              ; preds = %12
  %117 = load i32, i32* %11, align 4
  ret i32 %117
}

declare dso_local i32 @funcinfo(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @isLua(%struct.TYPE_21__*) #1

declare dso_local i32 @currentline(%struct.TYPE_21__*) #1

declare dso_local i32 @noLuaClosure(%struct.TYPE_20__*) #1

declare dso_local i8* @getfuncname(i32*, %struct.TYPE_21__*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
