; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_setup.c_ccf_options.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_setup.c_ccf_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@adns_if_debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ndots:\00", align 1
@INT_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"option `%.*s' malformed or has bad value\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"adns_checkc:\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@adns_if_checkc_freq = common dso_local global i32 0, align 4
@adns_if_checkc_entex = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"entex\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"option adns_checkc has bad value `%s' (must be none, entex or freq\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"%s:%d: unknown option `%.*s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*, i32, i8*)* @ccf_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccf_options(%struct.TYPE_5__* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %137

16:                                               ; preds = %4
  br label %17

17:                                               ; preds = %130, %129, %64, %57, %27, %16
  %18 = call i64 @nextword(i8** %8, i8** %9, i32* %12)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %137

20:                                               ; preds = %17
  %21 = load i32, i32* %12, align 4
  %22 = icmp eq i32 %21, 5
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @memcmp(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @adns_if_debug, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %17

33:                                               ; preds = %23, %20
  %34 = load i32, i32* %12, align 4
  %35 = icmp sge i32 %34, 6
  br i1 %35, label %36, label %68

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @memcmp(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %68, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 6
  %43 = call i64 @strtoul(i8* %42, i8** %10, i32 10)
  store i64 %43, i64* %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = icmp eq i32 %44, 6
  br i1 %45, label %57, label %46

46:                                               ; preds = %40
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = icmp ne i8* %47, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %46
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @INT_MAX, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %53, %46, %40
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 (%struct.TYPE_5__*, i8*, i32, i8*, ...) @configparseerr(%struct.TYPE_5__* %58, i8* %59, i32 %60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %61, i8* %62)
  br label %17

64:                                               ; preds = %53
  %65 = load i64, i64* %11, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %17

68:                                               ; preds = %36, %33
  %69 = load i32, i32* %12, align 4
  %70 = icmp sge i32 %69, 12
  br i1 %70, label %71, label %130

71:                                               ; preds = %68
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @memcmp(i8* %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 12)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %130, label %75

75:                                               ; preds = %71
  %76 = load i8*, i8** %9, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 12
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @adns_if_checkc_freq, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load i32, i32* @adns_if_checkc_entex, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %129

92:                                               ; preds = %75
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 12
  %95 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* @adns_if_checkc_freq, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load i32, i32* @adns_if_checkc_entex, align 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %128

109:                                              ; preds = %92
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 12
  %112 = call i32 @strcmp(i8* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* @adns_if_checkc_freq, align 4
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  br label %127

120:                                              ; preds = %109
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = load i32, i32* %7, align 4
  %124 = load i8*, i8** %9, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 12
  %126 = call i32 (%struct.TYPE_5__*, i8*, i32, i8*, ...) @configparseerr(%struct.TYPE_5__* %121, i8* %122, i32 %123, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.7, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %120, %114
  br label %128

128:                                              ; preds = %127, %97
  br label %129

129:                                              ; preds = %128, %80
  br label %17

130:                                              ; preds = %71, %68
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %12, align 4
  %135 = load i8*, i8** %9, align 8
  %136 = call i32 @adns__diag(%struct.TYPE_5__* %131, i32 -1, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %132, i32 %133, i32 %134, i8* %135)
  br label %17

137:                                              ; preds = %15, %17
  ret void
}

declare dso_local i64 @nextword(i8**, i8**, i32*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @configparseerr(%struct.TYPE_5__*, i8*, i32, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @adns__diag(%struct.TYPE_5__*, i32, i32, i8*, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
