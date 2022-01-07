; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlCharToInteger.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlCharToInteger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32, i64, i64 }

@NB_STR2INT = common dso_local global i32 0, align 4
@str2int = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [92 x i8] c"(test %d): call failed: RtlCharToInteger(\22%s\22, %d, [out]) has result %x, expected: %x (%x)\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [90 x i8] c"(test %d): call failed: RtlCharToInteger(\22%s\22, %d, [out]) assigns value %d, expected: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [100 x i8] c"(test %d): call failed: RtlCharToInteger(\22%s\22, %d, [out]) assigns value %d, expected 0 or deadbeef\0A\00", align 1
@STATUS_ACCESS_VIOLATION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [61 x i8] c"call failed: RtlCharToInteger(\22%s\22, %d, NULL) has result %x\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [61 x i8] c"call failed: RtlCharToInteger(\22%s\22, 20, NULL) has result %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlCharToInteger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlCharToInteger() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %150, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @NB_STR2INT, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %153

8:                                                ; preds = %4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2int, align 8
  %10 = load i32, i32* %1, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %149

19:                                               ; preds = %8
  store i32 -559038737, i32* %2, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2int, align 8
  %21 = load i32, i32* %1, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2int, align 8
  %27 = load i32, i32* %1, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @pRtlCharToInteger(i8* %25, i32 %31, i32* %2)
  store i64 %32, i64* %3, align 8
  %33 = load i64, i64* %3, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2int, align 8
  %35 = load i32, i32* %1, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %33, %39
  br i1 %40, label %60, label %41

41:                                               ; preds = %19
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2int, align 8
  %43 = load i32, i32* %1, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load i64, i64* %3, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2int, align 8
  %52 = load i32, i32* %1, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %50, %56
  br label %58

58:                                               ; preds = %49, %41
  %59 = phi i1 [ false, %41 ], [ %57, %49 ]
  br label %60

60:                                               ; preds = %58, %19
  %61 = phi i1 [ true, %19 ], [ %59, %58 ]
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %1, align 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2int, align 8
  %65 = load i32, i32* %1, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2int, align 8
  %71 = load i32, i32* %1, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* %3, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2int, align 8
  %78 = load i32, i32* %1, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2int, align 8
  %84 = load i32, i32* %1, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i32 %63, i8* %69, i32 %75, i64 %76, i64 %82, i64 %88)
  %90 = load i64, i64* %3, align 8
  %91 = load i64, i64* @STATUS_SUCCESS, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %124

93:                                               ; preds = %60
  %94 = load i32, i32* %2, align 4
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2int, align 8
  %96 = load i32, i32* %1, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %94, %100
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %1, align 4
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2int, align 8
  %105 = load i32, i32* %1, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2int, align 8
  %111 = load i32, i32* %1, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %2, align 4
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2int, align 8
  %118 = load i32, i32* %1, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 %103, i8* %109, i32 %115, i32 %116, i32 %122)
  br label %148

124:                                              ; preds = %60
  %125 = load i32, i32* %2, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %2, align 4
  %129 = icmp eq i32 %128, -559038737
  br label %130

130:                                              ; preds = %127, %124
  %131 = phi i1 [ true, %124 ], [ %129, %127 ]
  %132 = zext i1 %131 to i32
  %133 = load i32, i32* %1, align 4
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2int, align 8
  %135 = load i32, i32* %1, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2int, align 8
  %141 = load i32, i32* %1, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %2, align 4
  %147 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.2, i64 0, i64 0), i32 %133, i8* %139, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %130, %93
  br label %149

149:                                              ; preds = %148, %8
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %1, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %1, align 4
  br label %4

153:                                              ; preds = %4
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2int, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 1
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2int, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i64 1
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i64 @pRtlCharToInteger(i8* %157, i32 %161, i32* null)
  store i64 %162, i64* %3, align 8
  %163 = load i64, i64* %3, align 8
  %164 = load i64, i64* @STATUS_ACCESS_VIOLATION, align 8
  %165 = icmp eq i64 %163, %164
  %166 = zext i1 %165 to i32
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2int, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 1
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2int, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i64 1
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i64, i64* %3, align 8
  %176 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i8* %170, i32 %174, i64 %175)
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2int, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i64 1
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = call i64 @pRtlCharToInteger(i8* %180, i32 20, i32* null)
  store i64 %181, i64* %3, align 8
  %182 = load i64, i64* %3, align 8
  %183 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  %184 = icmp eq i64 %182, %183
  %185 = zext i1 %184 to i32
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** @str2int, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i64 1
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = load i64, i64* %3, align 8
  %191 = call i32 (i32, i8*, ...) @ok(i32 %185, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i8* %189, i64 %190)
  ret void
}

declare dso_local i64 @pRtlCharToInteger(i8*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
