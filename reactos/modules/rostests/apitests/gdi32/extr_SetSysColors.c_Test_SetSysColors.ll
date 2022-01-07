; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_SetSysColors.c_Test_SetSysColors.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_SetSysColors.c_Test_SetSysColors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_SYSCOLORS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Expected FALSE, got TRUE\0A\00", align 1
@ERROR_NOACCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Expected ERROR_NOACCESS, got %ld\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Expected TRUE, got FALSE\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Expected %06lx, got %06lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_SetSysColors() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load i32, i32* @NUM_SYSCOLORS, align 4
  %7 = add nsw i32 %6, 1
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %2, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %3, align 8
  %11 = load i32, i32* @NUM_SYSCOLORS, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca i64, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  %14 = load i32, i32* @NUM_SYSCOLORS, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = alloca i64, i64 %16, align 16
  store i64 %16, i64* %5, align 8
  store i32 0, i32* %1, align 4
  br label %18

18:                                               ; preds = %32, %0
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @NUM_SYSCOLORS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %10, i64 %25
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* %1, align 4
  %28 = call i64 @GetSysColor(i32 %27)
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %13, i64 %30
  store i64 %28, i64* %31, align 8
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %18

35:                                               ; preds = %18
  store i32 0, i32* %1, align 4
  br label %36

36:                                               ; preds = %51, %35
  %37 = load i32, i32* %1, align 4
  %38 = load i32, i32* @NUM_SYSCOLORS, align 4
  %39 = add nsw i32 %38, 1
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* %1, align 4
  %44 = sub nsw i32 255, %43
  %45 = load i32, i32* %1, align 4
  %46 = mul nsw i32 %45, 3
  %47 = call i64 @RGB(i32 %42, i32 %44, i32 %46)
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %17, i64 %49
  store i64 %47, i64* %50, align 8
  br label %51

51:                                               ; preds = %41
  %52 = load i32, i32* %1, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %1, align 4
  br label %36

54:                                               ; preds = %36
  %55 = getelementptr inbounds i32, i32* %10, i64 0
  %56 = load i32, i32* %55, align 16
  %57 = load i32, i32* @NUM_SYSCOLORS, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %10, i64 %58
  store i32 %56, i32* %59, align 4
  %60 = call i32 @SetLastError(i32 -559038737)
  %61 = call i64 @SetSysColors(i32 -1, i32* %10, i64* %17)
  %62 = load i64, i64* @FALSE, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %66 = call i64 (...) @GetLastError()
  %67 = load i64, i64* @ERROR_NOACCESS, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i64 (...) @GetLastError()
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %70)
  %72 = call i64 @SetSysColors(i32 0, i32* %10, i64* %17)
  %73 = load i64, i64* @TRUE, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %77 = call i64 @SetSysColors(i32 0, i32* null, i64* %17)
  %78 = load i64, i64* @TRUE, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %82 = call i64 @SetSysColors(i32 0, i32* %10, i64* null)
  %83 = load i64, i64* @TRUE, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %87 = call i64 @SetSysColors(i32 1, i32* null, i64* %17)
  %88 = load i64, i64* @FALSE, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %92 = call i64 (...) @GetLastError()
  %93 = load i64, i64* @ERROR_NOACCESS, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i64 (...) @GetLastError()
  %97 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %96)
  %98 = call i64 @SetSysColors(i32 1, i32* %10, i64* null)
  %99 = load i64, i64* @FALSE, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %103 = call i64 (...) @GetLastError()
  %104 = load i64, i64* @ERROR_NOACCESS, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i64 (...) @GetLastError()
  %108 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %107)
  %109 = call i64 @SetSysColors(i32 1, i32* %10, i64* %17)
  %110 = load i64, i64* @TRUE, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %114 = load i32, i32* @NUM_SYSCOLORS, align 4
  %115 = call i64 @SetSysColors(i32 %114, i32* %10, i64* %17)
  %116 = load i64, i64* @TRUE, align 8
  %117 = icmp eq i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %120

120:                                              ; preds = %146, %54
  %121 = load i32, i32* %1, align 4
  %122 = load i32, i32* @NUM_SYSCOLORS, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %149

124:                                              ; preds = %120
  %125 = load i32, i32* %1, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %10, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @GetSysColor(i32 %128)
  %130 = load i32, i32* %1, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %17, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %129, %133
  %135 = zext i1 %134 to i32
  %136 = load i32, i32* %1, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %17, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %1, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %10, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @GetSysColor(i32 %143)
  %145 = call i32 (i32, i8*, ...) @ok(i32 %135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %139, i64 %144)
  br label %146

146:                                              ; preds = %124
  %147 = load i32, i32* %1, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %1, align 4
  br label %120

149:                                              ; preds = %120
  %150 = load i32, i32* @NUM_SYSCOLORS, align 4
  %151 = add nsw i32 %150, 1
  %152 = call i64 @SetSysColors(i32 %151, i32* %10, i64* %17)
  %153 = load i64, i64* @TRUE, align 8
  %154 = icmp eq i64 %152, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 (i32, i8*, ...) @ok(i32 %155, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %157 = load i32, i32* @NUM_SYSCOLORS, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %10, i64 %158
  store i32 10000, i32* %159, align 4
  %160 = load i32, i32* @NUM_SYSCOLORS, align 4
  %161 = add nsw i32 %160, 1
  %162 = call i64 @SetSysColors(i32 %161, i32* %10, i64* %17)
  %163 = load i64, i64* @TRUE, align 8
  %164 = icmp eq i64 %162, %163
  %165 = zext i1 %164 to i32
  %166 = call i32 (i32, i8*, ...) @ok(i32 %165, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %167 = load i32, i32* @NUM_SYSCOLORS, align 4
  %168 = call i64 @SetSysColors(i32 %167, i32* %10, i64* %13)
  %169 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %169)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetSysColor(i32) #2

declare dso_local i64 @RGB(i32, i32, i32) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @SetSysColors(i32, i32*, i64*) #2

declare dso_local i64 @GetLastError(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
