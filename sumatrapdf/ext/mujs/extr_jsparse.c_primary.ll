; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_primary.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_primary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32, i64, i32, i32 }

@TK_IDENTIFIER = common dso_local global i64 0, align 8
@EXP_IDENTIFIER = common dso_local global i32 0, align 4
@TK_STRING = common dso_local global i64 0, align 8
@EXP_STRING = common dso_local global i32 0, align 4
@TK_REGEXP = common dso_local global i64 0, align 8
@EXP_REGEXP = common dso_local global i32 0, align 4
@TK_NUMBER = common dso_local global i64 0, align 8
@EXP_NUMBER = common dso_local global i32 0, align 4
@TK_THIS = common dso_local global i8 0, align 1
@THIS = common dso_local global i32* null, align 8
@TK_NULL = common dso_local global i8 0, align 1
@TK_TRUE = common dso_local global i8 0, align 1
@TRUE = common dso_local global i32* null, align 8
@TK_FALSE = common dso_local global i8 0, align 1
@FALSE = common dso_local global i32* null, align 8
@OBJECT = common dso_local global i32 0, align 4
@ARRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unexpected token in expression: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (%struct.TYPE_19__*)* @primary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @primary(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %6 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TK_IDENTIFIER, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %16 = load i32, i32* @EXP_IDENTIFIER, align 4
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_20__* @jsP_newstrnode(%struct.TYPE_19__* %15, i32 %16, i32 %19)
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %4, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %22 = call i32 @jsP_next(%struct.TYPE_19__* %21)
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %2, align 8
  br label %149

24:                                               ; preds = %1
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TK_STRING, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %32 = load i32, i32* @EXP_STRING, align 4
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.TYPE_20__* @jsP_newstrnode(%struct.TYPE_19__* %31, i32 %32, i32 %35)
  store %struct.TYPE_20__* %36, %struct.TYPE_20__** %4, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %38 = call i32 @jsP_next(%struct.TYPE_19__* %37)
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_20__* %39, %struct.TYPE_20__** %2, align 8
  br label %149

40:                                               ; preds = %24
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TK_REGEXP, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %40
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %48 = load i32, i32* @EXP_REGEXP, align 4
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.TYPE_20__* @jsP_newstrnode(%struct.TYPE_19__* %47, i32 %48, i32 %51)
  store %struct.TYPE_20__* %52, %struct.TYPE_20__** %4, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %59 = call i32 @jsP_next(%struct.TYPE_19__* %58)
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_20__* %60, %struct.TYPE_20__** %2, align 8
  br label %149

61:                                               ; preds = %40
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TK_NUMBER, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %69 = load i32, i32* @EXP_NUMBER, align 4
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call %struct.TYPE_20__* @jsP_newnumnode(%struct.TYPE_19__* %68, i32 %69, i32 %72)
  store %struct.TYPE_20__* %73, %struct.TYPE_20__** %4, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %75 = call i32 @jsP_next(%struct.TYPE_19__* %74)
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_20__* %76, %struct.TYPE_20__** %2, align 8
  br label %149

77:                                               ; preds = %61
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %79 = load i8, i8* @TK_THIS, align 1
  %80 = call i64 @jsP_accept(%struct.TYPE_19__* %78, i8 signext %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32*, i32** @THIS, align 8
  %84 = call %struct.TYPE_20__* @EXP0(i32* %83)
  store %struct.TYPE_20__* %84, %struct.TYPE_20__** %2, align 8
  br label %149

85:                                               ; preds = %77
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %87 = load i8, i8* @TK_NULL, align 1
  %88 = call i64 @jsP_accept(%struct.TYPE_19__* %86, i8 signext %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = call %struct.TYPE_20__* @EXP0(i32* null)
  store %struct.TYPE_20__* %91, %struct.TYPE_20__** %2, align 8
  br label %149

92:                                               ; preds = %85
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %94 = load i8, i8* @TK_TRUE, align 1
  %95 = call i64 @jsP_accept(%struct.TYPE_19__* %93, i8 signext %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32*, i32** @TRUE, align 8
  %99 = call %struct.TYPE_20__* @EXP0(i32* %98)
  store %struct.TYPE_20__* %99, %struct.TYPE_20__** %2, align 8
  br label %149

100:                                              ; preds = %92
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %102 = load i8, i8* @TK_FALSE, align 1
  %103 = call i64 @jsP_accept(%struct.TYPE_19__* %101, i8 signext %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32*, i32** @FALSE, align 8
  %107 = call %struct.TYPE_20__* @EXP0(i32* %106)
  store %struct.TYPE_20__* %107, %struct.TYPE_20__** %2, align 8
  br label %149

108:                                              ; preds = %100
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %110 = call i64 @jsP_accept(%struct.TYPE_19__* %109, i8 signext 123)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = load i32, i32* @OBJECT, align 4
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %115 = call i32 @objectliteral(%struct.TYPE_19__* %114)
  %116 = call %struct.TYPE_20__* @EXP1(i32 %113, i32 %115)
  store %struct.TYPE_20__* %116, %struct.TYPE_20__** %4, align 8
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %118 = call i32 @jsP_expect(%struct.TYPE_19__* %117, i8 signext 125)
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_20__* %119, %struct.TYPE_20__** %2, align 8
  br label %149

120:                                              ; preds = %108
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %122 = call i64 @jsP_accept(%struct.TYPE_19__* %121, i8 signext 91)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load i32, i32* @ARRAY, align 4
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %127 = call i32 @arrayliteral(%struct.TYPE_19__* %126)
  %128 = call %struct.TYPE_20__* @EXP1(i32 %125, i32 %127)
  store %struct.TYPE_20__* %128, %struct.TYPE_20__** %4, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %130 = call i32 @jsP_expect(%struct.TYPE_19__* %129, i8 signext 93)
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_20__* %131, %struct.TYPE_20__** %2, align 8
  br label %149

132:                                              ; preds = %120
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %134 = call i64 @jsP_accept(%struct.TYPE_19__* %133, i8 signext 40)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %132
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %138 = call %struct.TYPE_20__* @expression(%struct.TYPE_19__* %137, i32 0)
  store %struct.TYPE_20__* %138, %struct.TYPE_20__** %4, align 8
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %140 = call i32 @jsP_expect(%struct.TYPE_19__* %139, i8 signext 41)
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_20__* %141, %struct.TYPE_20__** %2, align 8
  br label %149

142:                                              ; preds = %132
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @jsY_tokenstring(i64 %146)
  %148 = call i32 @jsP_error(%struct.TYPE_19__* %143, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %142, %136, %124, %112, %105, %97, %90, %82, %67, %46, %30, %14
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  ret %struct.TYPE_20__* %150
}

declare dso_local %struct.TYPE_20__* @jsP_newstrnode(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @jsP_next(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_20__* @jsP_newnumnode(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i64 @jsP_accept(%struct.TYPE_19__*, i8 signext) #1

declare dso_local %struct.TYPE_20__* @EXP0(i32*) #1

declare dso_local %struct.TYPE_20__* @EXP1(i32, i32) #1

declare dso_local i32 @objectliteral(%struct.TYPE_19__*) #1

declare dso_local i32 @jsP_expect(%struct.TYPE_19__*, i8 signext) #1

declare dso_local i32 @arrayliteral(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_20__* @expression(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @jsP_error(%struct.TYPE_19__*, i8*, i32) #1

declare dso_local i32 @jsY_tokenstring(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
