; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_mru.c_check_reg_entries.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_mru.c_check_reg_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@REG_TEST_FULLKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Couldn't open test key \22%s\22\0A\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"MRUList\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Checking MRU: got %d from RegQueryValueExW\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Checking MRU: Expected list %s, got %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"Checking MRU item %d ('%c'): got %d from RegQueryValueExW\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"Checking MRU item %d ('%c'): expected \22%s\22, got \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**)* @check_reg_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_reg_entries(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i8], align 1
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %6, align 8
  %12 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %13 = load i32, i32* @REG_TEST_FULLKEY, align 4
  %14 = call i32 @RegOpenKeyA(i32 %12, i32 %13, i32** %6)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* @REG_TEST_FULLKEY, align 4
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %150

23:                                               ; preds = %2
  %24 = load i32, i32* @REG_SZ, align 4
  store i32 %24, i32* %7, align 4
  store i32 128, i32* %8, align 4
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %25, align 16
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %28 = ptrtoint i8* %27 to i32
  %29 = call i32 @RegQueryValueExA(i32* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* %7, i32 %28, i32* %8)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %34 = load i8, i8* %33, align 16
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %32, %23
  %38 = phi i1 [ false, %23 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %9, align 4
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %46 = load i8, i8* %45, align 16
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44, %37
  br label %150

49:                                               ; preds = %44
  %50 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %51 = load i8*, i8** %3, align 8
  %52 = call i64 @strcmp(i8* %50, i8* %51)
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = load i8*, i8** %3, align 8
  %56 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %57 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %55, i8* %56)
  %58 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %59 = load i8*, i8** %3, align 8
  %60 = call i64 @strcmp(i8* %58, i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  br label %150

63:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %147, %63
  %65 = load i32, i32* %10, align 4
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = icmp ult i32 %65, %67
  br i1 %68, label %69, label %150

69:                                               ; preds = %64
  %70 = load i8*, i8** %3, align 8
  %71 = load i32, i32* %10, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  store i8 %74, i8* %75, align 1
  %76 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 1
  store i8 0, i8* %76, align 1
  %77 = load i32, i32* @REG_SZ, align 4
  store i32 %77, i32* %7, align 4
  store i32 128, i32* %8, align 4
  %78 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %78, align 16
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %81 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %82 = ptrtoint i8* %81 to i32
  %83 = call i32 @RegQueryValueExA(i32* %79, i8* %80, i32* null, i32* %7, i32 %82, i32* %8)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %69
  %87 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %88 = load i8, i8* %87, align 16
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br label %91

91:                                               ; preds = %86, %69
  %92 = phi i1 [ false, %69 ], [ %90, %86 ]
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %10, align 4
  %95 = load i8*, i8** %3, align 8
  %96 = load i32, i32* %10, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = load i32, i32* %9, align 4
  %102 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %94, i32 %100, i32 %101)
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %91
  %106 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %107 = load i8, i8* %106, align 16
  %108 = icmp ne i8 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %105, %91
  br label %150

110:                                              ; preds = %105
  %111 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %112 = load i8**, i8*** %4, align 8
  %113 = load i8*, i8** %3, align 8
  %114 = load i32, i32* %10, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = sub nsw i32 %118, 97
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %112, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i64 @strcmp(i8* %111, i8* %122)
  %124 = icmp ne i64 %123, 0
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = load i32, i32* %10, align 4
  %128 = load i8*, i8** %3, align 8
  %129 = load i32, i32* %10, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %135 = load i8**, i8*** %4, align 8
  %136 = load i8*, i8** %3, align 8
  %137 = load i32, i32* %10, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = sub nsw i32 %141, 97
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %135, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %127, i32 %133, i8* %134, i8* %145)
  br label %147

147:                                              ; preds = %110
  %148 = load i32, i32* %10, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %10, align 4
  br label %64

150:                                              ; preds = %22, %48, %62, %109, %64
  ret void
}

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @RegOpenKeyA(i32, i32, i32**) #1

declare dso_local i32 @RegQueryValueExA(i32*, i8*, i32*, i32*, i32, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
