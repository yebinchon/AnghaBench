; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rossym_new/extr_dwarfpubnames.c__dwarfnametounit.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rossym_new/extr_dwarfpubnames.c__dwarfnametounit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_24__* }

@.str = private unnamed_addr constant [32 x i8] c"bad length in dwarf name header\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"bad version %d in dwarf name header\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"bad offset in name entry\00", align 1
@nil = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"unexpected name %#q in lookup for %#q\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"unknown name '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, i8*, %struct.TYPE_23__*, %struct.TYPE_21__*)* @_dwarfnametounit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dwarfnametounit(%struct.TYPE_24__* %0, i8* %1, %struct.TYPE_23__* %2, %struct.TYPE_21__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_22__, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %9, align 8
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 2
  store %struct.TYPE_24__* %17, %struct.TYPE_24__** %18, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %24, %27
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %149, %4
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %153

36:                                               ; preds = %30
  %37 = call i64 @dwarfget4(%struct.TYPE_22__* %16)
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %40, %42
  %44 = sext i32 %43 to i64
  %45 = icmp sgt i64 %38, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %156

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %11, align 8
  %53 = add nsw i64 %51, %52
  %54 = inttoptr i64 %53 to i32*
  store i32* %54, i32** %14, align 8
  %55 = call i32 @dwarfget2(%struct.TYPE_22__* %16)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 1
  br i1 %57, label %58, label %64

58:                                               ; preds = %48
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 2
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %10, align 4
  %63 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  store i32 -1, i32* %5, align 4
  br label %156

64:                                               ; preds = %58, %48
  %65 = call i64 @dwarfget4(%struct.TYPE_22__* %16)
  store i64 %65, i64* %12, align 8
  %66 = call i64 @dwarfget4(%struct.TYPE_22__* %16)
  br label %67

67:                                               ; preds = %148, %64
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i32*
  %72 = load i32*, i32** %14, align 8
  %73 = icmp ult i32* %71, %72
  br i1 %73, label %74, label %149

74:                                               ; preds = %67
  %75 = call i64 @dwarfget4(%struct.TYPE_22__* %16)
  store i64 %75, i64* %13, align 8
  %76 = load i64, i64* %13, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %149

79:                                               ; preds = %74
  %80 = call i8* @dwarfgetstring(%struct.TYPE_22__* %16)
  store i8* %80, i8** %15, align 8
  %81 = load i8*, i8** %15, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i64 @strcmp(i8* %81, i8* %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %148

85:                                               ; preds = %79
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %89 = call i64 @dwarfenumunit(%struct.TYPE_24__* %86, i64 %87, %struct.TYPE_21__* %88)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 -1, i32* %5, align 4
  br label %156

92:                                               ; preds = %85
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* %13, align 8
  %95 = add nsw i64 %93, %94
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %99, %103
  %105 = icmp sge i64 %95, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %92
  %107 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %156

108:                                              ; preds = %92
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %12, align 8
  %114 = add nsw i64 %112, %113
  %115 = load i64, i64* %13, align 8
  %116 = add nsw i64 %114, %115
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  store i64 %116, i64* %119, align 8
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %122 = call i64 @dwarfnextsym(%struct.TYPE_24__* %120, %struct.TYPE_21__* %121)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %108
  store i32 -1, i32* %5, align 4
  br label %156

125:                                              ; preds = %108
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = load i8*, i8** @nil, align 8
  %131 = icmp eq i8* %129, %130
  br i1 %131, label %140, label %132

132:                                              ; preds = %125
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load i8*, i8** %7, align 8
  %138 = call i64 @strcmp(i8* %136, i8* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %132, %125
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load i8*, i8** %7, align 8
  %146 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %144, i8* %145)
  store i32 -1, i32* %5, align 4
  br label %156

147:                                              ; preds = %132
  store i32 0, i32* %5, align 4
  br label %156

148:                                              ; preds = %79
  br label %67

149:                                              ; preds = %78, %67
  %150 = load i32*, i32** %14, align 8
  %151 = ptrtoint i32* %150 to i32
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  store i32 %151, i32* %152, align 8
  br label %30

153:                                              ; preds = %30
  %154 = load i8*, i8** %7, align 8
  %155 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %154)
  store i32 -1, i32* %5, align 4
  br label %156

156:                                              ; preds = %153, %147, %140, %124, %106, %91, %61, %46
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i64 @dwarfget4(%struct.TYPE_22__*) #1

declare dso_local i32 @werrstr(i8*, ...) #1

declare dso_local i32 @dwarfget2(%struct.TYPE_22__*) #1

declare dso_local i8* @dwarfgetstring(%struct.TYPE_22__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @dwarfenumunit(%struct.TYPE_24__*, i64, %struct.TYPE_21__*) #1

declare dso_local i64 @dwarfnextsym(%struct.TYPE_24__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
