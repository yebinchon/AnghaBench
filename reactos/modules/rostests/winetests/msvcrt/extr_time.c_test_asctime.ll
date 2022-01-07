; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_time.c_test_asctime.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_time.c_test_asctime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Thu Jan 01 00:00:00 1970\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"asctime returned %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Mon Nov 26 02:58:41 1979\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Wed Nov 26 02:58:41 1979\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"errno = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Wed Nov 28 02:58:41 :000\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Wed Nov 28 02:58:41 190/\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Wed Feb 30 02:58:41 1979\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_asctime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_asctime() #0 {
  %1 = alloca %struct.tm*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 0, i32* %2, align 4
  %4 = call %struct.tm* @p_gmtime(i32* %2)
  store %struct.tm* %4, %struct.tm** %1, align 8
  %5 = load %struct.tm*, %struct.tm** %1, align 8
  %6 = call i8* @p_asctime(%struct.tm* %5)
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  store i32 312433121, i32* %2, align 4
  %14 = call %struct.tm* @p_gmtime(i32* %2)
  store %struct.tm* %14, %struct.tm** %1, align 8
  %15 = load %struct.tm*, %struct.tm** %1, align 8
  %16 = call i8* @p_asctime(%struct.tm* %15)
  store i8* %16, i8** %3, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = load %struct.tm*, %struct.tm** %1, align 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 0
  store i32 3, i32* %25, align 4
  %26 = load %struct.tm*, %struct.tm** %1, align 8
  %27 = call i8* @p_asctime(%struct.tm* %26)
  store i8* %27, i8** %3, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  store i32 -559038737, i32* @errno, align 4
  %35 = load %struct.tm*, %struct.tm** %1, align 8
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %35, i32 0, i32 0
  store i32 7, i32* %36, align 4
  %37 = load %struct.tm*, %struct.tm** %1, align 8
  %38 = call i8* @p_asctime(%struct.tm* %37)
  store i8* %38, i8** %3, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %0
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @broken(i32 %47)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %41, %0
  %51 = phi i1 [ true, %0 ], [ %49, %41 ]
  %52 = zext i1 %51 to i32
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* @errno, align 4
  %56 = load i32, i32* @EINVAL, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* @errno, align 4
  %60 = icmp eq i32 %59, -559038737
  %61 = zext i1 %60 to i32
  %62 = call i64 @broken(i32 %61)
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %58, %50
  %65 = phi i1 [ true, %50 ], [ %63, %58 ]
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* @errno, align 4
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %69 = load %struct.tm*, %struct.tm** %1, align 8
  %70 = getelementptr inbounds %struct.tm, %struct.tm* %69, i32 0, i32 0
  store i32 3, i32* %70, align 4
  %71 = load %struct.tm*, %struct.tm** %1, align 8
  %72 = getelementptr inbounds %struct.tm, %struct.tm* %71, i32 0, i32 1
  store i32 1300, i32* %72, align 4
  %73 = load %struct.tm*, %struct.tm** %1, align 8
  %74 = call i8* @p_asctime(%struct.tm* %73)
  store i8* %74, i8** %3, align 8
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = load i8*, i8** %3, align 8
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %80)
  %82 = load %struct.tm*, %struct.tm** %1, align 8
  %83 = getelementptr inbounds %struct.tm, %struct.tm* %82, i32 0, i32 2
  store i32 28, i32* %83, align 4
  %84 = load %struct.tm*, %struct.tm** %1, align 8
  %85 = getelementptr inbounds %struct.tm, %struct.tm* %84, i32 0, i32 3
  store i32 8100, i32* %85, align 4
  %86 = load %struct.tm*, %struct.tm** %1, align 8
  %87 = call i8* @p_asctime(%struct.tm* %86)
  store i8* %87, i8** %3, align 8
  %88 = load i8*, i8** %3, align 8
  %89 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = load i8*, i8** %3, align 8
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %93)
  %95 = load %struct.tm*, %struct.tm** %1, align 8
  %96 = getelementptr inbounds %struct.tm, %struct.tm* %95, i32 0, i32 3
  store i32 264100, i32* %96, align 4
  %97 = load %struct.tm*, %struct.tm** %1, align 8
  %98 = call i8* @p_asctime(%struct.tm* %97)
  store i8* %98, i8** %3, align 8
  %99 = load i8*, i8** %3, align 8
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = load i8*, i8** %3, align 8
  %105 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %104)
  store i32 -559038737, i32* @errno, align 4
  %106 = load %struct.tm*, %struct.tm** %1, align 8
  %107 = getelementptr inbounds %struct.tm, %struct.tm* %106, i32 0, i32 3
  store i32 -1, i32* %107, align 4
  %108 = load %struct.tm*, %struct.tm** %1, align 8
  %109 = call i8* @p_asctime(%struct.tm* %108)
  store i8* %109, i8** %3, align 8
  %110 = load i8*, i8** %3, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %120

112:                                              ; preds = %64
  %113 = load i8*, i8** %3, align 8
  %114 = call i32 @strcmp(i8* %113, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = call i64 @broken(i32 %117)
  %119 = icmp ne i64 %118, 0
  br label %120

120:                                              ; preds = %112, %64
  %121 = phi i1 [ true, %64 ], [ %119, %112 ]
  %122 = zext i1 %121 to i32
  %123 = load i8*, i8** %3, align 8
  %124 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %123)
  %125 = load i32, i32* @errno, align 4
  %126 = load i32, i32* @EINVAL, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %134, label %128

128:                                              ; preds = %120
  %129 = load i32, i32* @errno, align 4
  %130 = icmp eq i32 %129, -559038737
  %131 = zext i1 %130 to i32
  %132 = call i64 @broken(i32 %131)
  %133 = icmp ne i64 %132, 0
  br label %134

134:                                              ; preds = %128, %120
  %135 = phi i1 [ true, %120 ], [ %133, %128 ]
  %136 = zext i1 %135 to i32
  %137 = load i32, i32* @errno, align 4
  %138 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %137)
  store i32 -559038737, i32* @errno, align 4
  %139 = load %struct.tm*, %struct.tm** %1, align 8
  %140 = getelementptr inbounds %struct.tm, %struct.tm* %139, i32 0, i32 4
  store i32 1, i32* %140, align 4
  %141 = load %struct.tm*, %struct.tm** %1, align 8
  %142 = getelementptr inbounds %struct.tm, %struct.tm* %141, i32 0, i32 2
  store i32 30, i32* %142, align 4
  %143 = load %struct.tm*, %struct.tm** %1, align 8
  %144 = getelementptr inbounds %struct.tm, %struct.tm* %143, i32 0, i32 3
  store i32 79, i32* %144, align 4
  %145 = load %struct.tm*, %struct.tm** %1, align 8
  %146 = call i8* @p_asctime(%struct.tm* %145)
  store i8* %146, i8** %3, align 8
  %147 = load i8*, i8** %3, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %157

149:                                              ; preds = %134
  %150 = load i8*, i8** %3, align 8
  %151 = call i32 @strcmp(i8* %150, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = call i64 @broken(i32 %154)
  %156 = icmp ne i64 %155, 0
  br label %157

157:                                              ; preds = %149, %134
  %158 = phi i1 [ true, %134 ], [ %156, %149 ]
  %159 = zext i1 %158 to i32
  %160 = load i8*, i8** %3, align 8
  %161 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %160)
  %162 = load i32, i32* @errno, align 4
  %163 = load i32, i32* @EINVAL, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %171, label %165

165:                                              ; preds = %157
  %166 = load i32, i32* @errno, align 4
  %167 = icmp eq i32 %166, -559038737
  %168 = zext i1 %167 to i32
  %169 = call i64 @broken(i32 %168)
  %170 = icmp ne i64 %169, 0
  br label %171

171:                                              ; preds = %165, %157
  %172 = phi i1 [ true, %157 ], [ %170, %165 ]
  %173 = zext i1 %172 to i32
  %174 = load i32, i32* @errno, align 4
  %175 = call i32 (i32, i8*, ...) @ok(i32 %173, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %174)
  ret void
}

declare dso_local %struct.tm* @p_gmtime(i32*) #1

declare dso_local i8* @p_asctime(%struct.tm*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
