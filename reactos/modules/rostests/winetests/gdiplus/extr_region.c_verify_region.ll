; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_region.c_verify_region.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_region.c_verify_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"expected sizeof(rdh), got %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"expected sizeof(rgn), got %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"size %u, type %u, count %u, rgn size %u, bound %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"rect %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"expected %s, got %s\0A\00", align 1
@RDH_RECTANGLES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"expected RDH_RECTANGLES, got %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"expected 0, got %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"expected 1, got %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"expected sizeof(RECT), got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @verify_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_region(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %union.anon, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @GetRegionData(i32 %8, i32 0, %struct.TYPE_5__* null)
  store i32 %9, i32* %7, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @IsRectEmpty(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp eq i64 %15, 20
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %7, align 4
  %19 = call i32 (i32, i8*, i32, ...) @ok(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %27

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp eq i64 %22, 24
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (i32, i8*, i32, ...) @ok(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %20, %13
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %183

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = bitcast %union.anon* %5 to %struct.TYPE_5__*
  %34 = call i32 @GetRegionData(i32 %32, i32 32, %struct.TYPE_5__* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @IsRectEmpty(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp eq i64 %40, 20
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i32, i8*, i32, ...) @ok(i32 %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %52

45:                                               ; preds = %31
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp eq i64 %47, 24
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (i32, i8*, i32, ...) @ok(i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %45, %38
  %53 = bitcast %union.anon* %5 to %struct.TYPE_5__*
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = bitcast %union.anon* %5 to %struct.TYPE_5__*
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = bitcast %union.anon* %5 to %struct.TYPE_5__*
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = bitcast %union.anon* %5 to %struct.TYPE_5__*
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = bitcast %union.anon* %5 to %struct.TYPE_5__*
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  %72 = call i32 @wine_dbgstr_rect(i32* %71)
  %73 = call i32 (i8*, i32, ...) @trace(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %60, i32 %64, i32 %68, i32 %72)
  %74 = bitcast %union.anon* %5 to %struct.TYPE_5__*
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %52
  %80 = bitcast %union.anon* %5 to %struct.TYPE_5__*
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i32*
  store i32* %83, i32** %6, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @wine_dbgstr_rect(i32* %84)
  %86 = call i32 (i8*, i32, ...) @trace(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = load i32*, i32** %6, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @EqualRect(i32* %87, i32* %88)
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @wine_dbgstr_rect(i32* %90)
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @wine_dbgstr_rect(i32* %92)
  %94 = call i32 (i32, i8*, i32, ...) @ok(i32 %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %91, i32 %93)
  br label %95

95:                                               ; preds = %79, %52
  %96 = bitcast %union.anon* %5 to %struct.TYPE_5__*
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = icmp eq i64 %100, 20
  %102 = zext i1 %101 to i32
  %103 = bitcast %union.anon* %5 to %struct.TYPE_5__*
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i32, i8*, i32, ...) @ok(i32 %102, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %106)
  %108 = bitcast %union.anon* %5 to %struct.TYPE_5__*
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @RDH_RECTANGLES, align 4
  %113 = icmp eq i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = bitcast %union.anon* %5 to %struct.TYPE_5__*
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i32, i8*, i32, ...) @ok(i32 %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %118)
  %120 = load i32*, i32** %4, align 8
  %121 = call i64 @IsRectEmpty(i32* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %146

123:                                              ; preds = %95
  %124 = bitcast %union.anon* %5 to %struct.TYPE_5__*
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 0
  %129 = zext i1 %128 to i32
  %130 = bitcast %union.anon* %5 to %struct.TYPE_5__*
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i32, i8*, i32, ...) @ok(i32 %129, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %133)
  %135 = bitcast %union.anon* %5 to %struct.TYPE_5__*
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 0
  %140 = zext i1 %139 to i32
  %141 = bitcast %union.anon* %5 to %struct.TYPE_5__*
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 (i32, i8*, i32, ...) @ok(i32 %140, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %144)
  br label %170

146:                                              ; preds = %95
  %147 = bitcast %union.anon* %5 to %struct.TYPE_5__*
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 1
  %152 = zext i1 %151 to i32
  %153 = bitcast %union.anon* %5 to %struct.TYPE_5__*
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32, i8*, i32, ...) @ok(i32 %152, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %156)
  %158 = bitcast %union.anon* %5 to %struct.TYPE_5__*
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = icmp eq i64 %162, 4
  %164 = zext i1 %163 to i32
  %165 = bitcast %union.anon* %5 to %struct.TYPE_5__*
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = call i32 (i32, i8*, i32, ...) @ok(i32 %164, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %146, %123
  %171 = bitcast %union.anon* %5 to %struct.TYPE_5__*
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 3
  %174 = load i32*, i32** %4, align 8
  %175 = call i32 @EqualRect(i32* %173, i32* %174)
  %176 = load i32*, i32** %4, align 8
  %177 = call i32 @wine_dbgstr_rect(i32* %176)
  %178 = bitcast %union.anon* %5 to %struct.TYPE_5__*
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 3
  %181 = call i32 @wine_dbgstr_rect(i32* %180)
  %182 = call i32 (i32, i8*, i32, ...) @ok(i32 %175, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %177, i32 %181)
  br label %183

183:                                              ; preds = %170, %30
  ret void
}

declare dso_local i32 @GetRegionData(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i64 @IsRectEmpty(i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @trace(i8*, i32, ...) #1

declare dso_local i32 @wine_dbgstr_rect(i32*) #1

declare dso_local i32 @EqualRect(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
