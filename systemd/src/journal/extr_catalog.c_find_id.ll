; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_catalog.c_find_id.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_catalog.c_find_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@LC_MESSAGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c".@\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"LC_MESSAGES value too long, ignoring: \22%.*s\22\00", align 1
@catalog_compare_func = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @find_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_id(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i8* null, i8** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %8, align 8
  %18 = load i32, i32* @LC_MESSAGES, align 4
  %19 = call i8* @setlocale(i32 %18, i32* null)
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @isempty(i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %98, label %23

23:                                               ; preds = %2
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @STR_IN_SET(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %98, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %9, align 8
  %29 = call i64 @strcspn(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp ugt i64 %30, 7
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i64, i64* %10, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @log_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %34, i8* %35)
  br label %97

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @strncpy(i8* %39, i8* %40, i64 %41)
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8 0, i8* %46, align 1
  %47 = load i8*, i8** %4, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le64toh(i32 %51)
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %48, i64 %53
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le64toh(i32 %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le64toh(i32 %61)
  %63 = load i64, i64* @catalog_compare_func, align 8
  %64 = trunc i64 %63 to i32
  %65 = call %struct.TYPE_5__* @bsearch(%struct.TYPE_5__* %7, i32* %54, i32 %58, i32 %62, i32 %64)
  store %struct.TYPE_5__* %65, %struct.TYPE_5__** %6, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = icmp ne %struct.TYPE_5__* %66, null
  br i1 %67, label %96, label %68

68:                                               ; preds = %37
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i8* @strchr(i8* %70, i8 signext 95)
  store i8* %71, i8** %11, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %95

74:                                               ; preds = %68
  %75 = load i8*, i8** %11, align 8
  store i8 0, i8* %75, align 1
  %76 = load i8*, i8** %4, align 8
  %77 = bitcast i8* %76 to i32*
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @le64toh(i32 %80)
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %77, i64 %82
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le64toh(i32 %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @le64toh(i32 %90)
  %92 = load i64, i64* @catalog_compare_func, align 8
  %93 = trunc i64 %92 to i32
  %94 = call %struct.TYPE_5__* @bsearch(%struct.TYPE_5__* %7, i32* %83, i32 %87, i32 %91, i32 %93)
  store %struct.TYPE_5__* %94, %struct.TYPE_5__** %6, align 8
  br label %95

95:                                               ; preds = %74, %68
  br label %96

96:                                               ; preds = %95, %37
  br label %97

97:                                               ; preds = %96, %32
  br label %98

98:                                               ; preds = %97, %23, %2
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %100 = icmp ne %struct.TYPE_5__* %99, null
  br i1 %100, label %124, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @zero(i8* %103)
  %105 = load i8*, i8** %4, align 8
  %106 = bitcast i8* %105 to i32*
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @le64toh(i32 %109)
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %106, i64 %111
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @le64toh(i32 %115)
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @le64toh(i32 %119)
  %121 = load i64, i64* @catalog_compare_func, align 8
  %122 = trunc i64 %121 to i32
  %123 = call %struct.TYPE_5__* @bsearch(%struct.TYPE_5__* %7, i32* %112, i32 %116, i32 %120, i32 %122)
  store %struct.TYPE_5__* %123, %struct.TYPE_5__** %6, align 8
  br label %124

124:                                              ; preds = %101, %98
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %126 = icmp ne %struct.TYPE_5__* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %124
  store i8* null, i8** %3, align 8
  br label %153

128:                                              ; preds = %124
  %129 = load i8*, i8** %4, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @le64toh(i32 %132)
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %129, i64 %134
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @le64toh(i32 %138)
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @le64toh(i32 %142)
  %144 = mul nsw i32 %139, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %135, i64 %145
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @le64toh(i32 %149)
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %146, i64 %151
  store i8* %152, i8** %3, align 8
  br label %153

153:                                              ; preds = %128, %127
  %154 = load i8*, i8** %3, align 8
  ret i8* %154
}

declare dso_local i8* @setlocale(i32, i32*) #1

declare dso_local i32 @isempty(i8*) #1

declare dso_local i32 @STR_IN_SET(i8*, i8*, i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @log_debug(i8*, i32, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local %struct.TYPE_5__* @bsearch(%struct.TYPE_5__*, i32*, i32, i32, i32) #1

declare dso_local i32 @le64toh(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @zero(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
