; ModuleID = '/home/carl/AnghaBench/upx/src/stub/tools/armpe/extr_armpe_tester.c_import.c'
source_filename = "/home/carl/AnghaBench/upx/src/stub/tools/armpe/extr_armpe_tester.c_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@ih = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PEDIR_IMPORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"no imports?\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"loadlibraryw=%p,getprocaddressa=%p,cachesync=%p\0A\00", align 1
@loadlibraryw = common dso_local global i64 0, align 8
@getprocaddressa = common dso_local global i64 0, align 8
@cachesync = common dso_local global i64 0, align 8
@vaddr = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"coredll.dll\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"coredll_imports=%p\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"name=%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"loadlibraryw\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"getprocaddressa\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"cachesync\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"coredll.dll not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @import() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ih, i32 0, i32 0), align 8
  %8 = load i64, i64* @PEDIR_IMPORT, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %1, align 4
  br label %120

15:                                               ; preds = %0
  %16 = load i64, i64* @loadlibraryw, align 8
  %17 = load i64, i64* @getprocaddressa, align 8
  %18 = load i64, i64* @cachesync, align 8
  %19 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %16, i64 %17, i64 %18)
  %20 = load i8*, i8** @vaddr, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ih, i32 0, i32 0), align 8
  %22 = load i64, i64* @PEDIR_IMPORT, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr i8, i8* %20, i64 %25
  store i8* %26, i8** %2, align 8
  br label %27

27:                                               ; preds = %115, %15
  %28 = load i8*, i8** %2, align 8
  %29 = getelementptr i8, i8* %28, i64 12
  %30 = call i32 @get_le32(i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %118

32:                                               ; preds = %27
  %33 = load i8*, i8** @vaddr, align 8
  %34 = load i8*, i8** %2, align 8
  %35 = getelementptr i8, i8* %34, i64 12
  %36 = call i32 @get_le32(i8* %35)
  %37 = sext i32 %36 to i64
  %38 = getelementptr i8, i8* %33, i64 %37
  %39 = call i64 @strcasecmp(i8* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %115

41:                                               ; preds = %32
  %42 = load i8*, i8** @vaddr, align 8
  %43 = load i8*, i8** %2, align 8
  %44 = getelementptr i8, i8* %43, i64 16
  %45 = call i32 @get_le32(i8* %44)
  %46 = sext i32 %45 to i64
  %47 = getelementptr i8, i8* %42, i64 %46
  store i8* %47, i8** %3, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %48)
  %50 = load i8*, i8** @vaddr, align 8
  %51 = load i8*, i8** %2, align 8
  %52 = call i32 @get_le32(i8* %51)
  %53 = sext i32 %52 to i64
  %54 = getelementptr i8, i8* %50, i64 %53
  store i8* %54, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %111, %41
  %56 = load i8*, i8** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr i8, i8* %56, i64 %58
  %60 = call i32 @get_le32(i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %114

62:                                               ; preds = %55
  %63 = load i8*, i8** @vaddr, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr i8, i8* %64, i64 %66
  %68 = call i32 @get_le32(i8* %67)
  %69 = sext i32 %68 to i64
  %70 = getelementptr i8, i8* %63, i64 %69
  %71 = getelementptr i8, i8* %70, i64 2
  store i8* %71, i8** %6, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %72)
  %74 = load i8*, i8** %6, align 8
  %75 = call i64 @strcasecmp(i8* %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %62
  %78 = load i8*, i8** %3, align 8
  %79 = load i32, i32* %5, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr i8, i8* %78, i64 %80
  %82 = load i64, i64* @loadlibraryw, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @set_le32(i8* %81, i32 %83)
  br label %111

85:                                               ; preds = %62
  %86 = load i8*, i8** %6, align 8
  %87 = call i64 @strcasecmp(i8* %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load i8*, i8** %3, align 8
  %91 = load i32, i32* %5, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr i8, i8* %90, i64 %92
  %94 = load i64, i64* @getprocaddressa, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @set_le32(i8* %93, i32 %95)
  br label %110

97:                                               ; preds = %85
  %98 = load i8*, i8** %6, align 8
  %99 = call i64 @strcasecmp(i8* %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  %102 = load i8*, i8** %3, align 8
  %103 = load i32, i32* %5, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr i8, i8* %102, i64 %104
  %106 = load i64, i64* @cachesync, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 @set_le32(i8* %105, i32 %107)
  br label %109

109:                                              ; preds = %101, %97
  br label %110

110:                                              ; preds = %109, %89
  br label %111

111:                                              ; preds = %110, %77
  %112 = load i32, i32* %5, align 4
  %113 = add i32 %112, 4
  store i32 %113, i32* %5, align 4
  br label %55

114:                                              ; preds = %55
  store i32 0, i32* %1, align 4
  br label %120

115:                                              ; preds = %32
  %116 = load i8*, i8** %2, align 8
  %117 = getelementptr i8, i8* %116, i64 20
  store i8* %117, i8** %2, align 8
  br label %27

118:                                              ; preds = %27
  %119 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %120

120:                                              ; preds = %118, %114, %13
  %121 = load i32, i32* %1, align 4
  ret i32 %121
}

declare dso_local i32 @print(i8*, ...) #1

declare dso_local i32 @get_le32(i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @set_le32(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
