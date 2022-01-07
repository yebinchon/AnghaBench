; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_pref.c_Set.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_pref.c_Set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8*, i32 (i32, i8*, i32*)* }

@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@gNumPrefOpts = common dso_local global i32 0, align 4
@gPrefOpts = common dso_local global %struct.TYPE_2__* null, align 8
@kPrefOptVisible = common dso_local global i64 0, align 8
@kPrefOptObselete = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"The \22%s\22 option is obselete or not implemented.\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Unknown option \22%s\22 -- try \22show all\22 to list available options.\0A\00", align 1
@gPrefsDirty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Set(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @ISTREQ(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %8, %2
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %30, %12
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @gNumPrefOpts, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gPrefOpts, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @kPrefOptVisible, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @Show1(i32 %27)
  br label %29

29:                                               ; preds = %26, %17
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %13

33:                                               ; preds = %13
  br label %142

34:                                               ; preds = %8
  %35 = load i8*, i8** %4, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %80

37:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %69, %37
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @gNumPrefOpts, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %72

42:                                               ; preds = %38
  %43 = load i8*, i8** %3, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gPrefOpts, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @ISTREQ(i8* %43, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %42
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gPrefOpts, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @kPrefOptObselete, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  br label %67

64:                                               ; preds = %52
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @Show1(i32 %65)
  br label %67

67:                                               ; preds = %64, %61
  br label %72

68:                                               ; preds = %42
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %38

72:                                               ; preds = %67, %38
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @gNumPrefOpts, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i8*, i8** %3, align 8
  %78 = call i32 @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %76, %72
  br label %141

80:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %130, %80
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @gNumPrefOpts, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %133

85:                                               ; preds = %81
  %86 = load i8*, i8** %3, align 8
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gPrefOpts, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @ISTREQ(i8* %86, i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %129

95:                                               ; preds = %85
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gPrefOpts, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @kPrefOptObselete, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = load i8*, i8** %3, align 8
  %106 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %105)
  br label %128

107:                                              ; preds = %95
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gPrefOpts, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  %113 = load i32 (i32, i8*, i32*)*, i32 (i32, i8*, i32*)** %112, align 8
  %114 = icmp ne i32 (i32, i8*, i32*)* %113, null
  br i1 %114, label %115, label %127

115:                                              ; preds = %107
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gPrefOpts, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  %121 = load i32 (i32, i8*, i32*)*, i32 (i32, i8*, i32*)** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = load i8*, i8** %4, align 8
  %124 = call i32 %121(i32 %122, i8* %123, i32* null)
  %125 = load i32, i32* @gPrefsDirty, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* @gPrefsDirty, align 4
  br label %127

127:                                              ; preds = %115, %107
  br label %128

128:                                              ; preds = %127, %104
  br label %133

129:                                              ; preds = %85
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  br label %81

133:                                              ; preds = %128, %81
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @gNumPrefOpts, align 4
  %136 = icmp sge i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i8*, i8** %3, align 8
  %139 = call i32 @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i8* %138)
  br label %140

140:                                              ; preds = %137, %133
  br label %141

141:                                              ; preds = %140, %79
  br label %142

142:                                              ; preds = %141, %33
  ret void
}

declare dso_local i64 @ISTREQ(i8*, i8*) #1

declare dso_local i32 @Show1(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
