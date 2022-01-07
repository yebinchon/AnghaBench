; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_atom.c_test_local_add_atom.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_atom.c_test_local_add_atom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"bad atom id %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"AddAtomA set last error\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"could not find atom foobar\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"FOOBAR\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"could not find atom FOOBAR\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"_foobar\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"found _foobar\0A\00", align 1
@foobarW = common dso_local global i32 0, align 4
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@unicode_OS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [63 x i8] c"WARNING: Unicode atom APIs are not supported on this platform\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Unicode atom does not match ASCII\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"AddAtomW set last error\0A\00", align 1
@FOOBARW = common dso_local global i32 0, align 4
@_foobarW = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"succeeded to add atom 0\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"failed to add atom %lx\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"succeeded adding %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_local_add_atom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_local_add_atom() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @SetLastError(i32 -559038737)
  %5 = call i32 @AddAtomA(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp sge i32 %6, 49152
  %8 = zext i1 %7 to i32
  %9 = load i32, i32* %1, align 4
  %10 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = call i32 (...) @GetLastError()
  %12 = icmp eq i32 %11, -559038737
  %13 = zext i1 %12 to i32
  %14 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 @FindAtomA(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %1, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %20 = call i32 @FindAtomA(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %21 = load i32, i32* %1, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %25 = call i32 @FindAtomA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %30 = call i32 @SetLastError(i32 -559038737)
  %31 = load i32, i32* @foobarW, align 4
  %32 = call i32 @AddAtomW(i32 %31)
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %0
  %36 = call i32 (...) @GetLastError()
  %37 = load i32, i32* @ERROR_CALL_NOT_IMPLEMENTED, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i64, i64* @TRUE, align 8
  store i64 %40, i64* @unicode_OS, align 8
  br label %43

41:                                               ; preds = %35, %0
  %42 = call i32 @trace(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %39
  %44 = load i64, i64* @unicode_OS, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* %1, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %52 = call i32 (...) @GetLastError()
  %53 = icmp eq i32 %52, -559038737
  %54 = zext i1 %53 to i32
  %55 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %56

56:                                               ; preds = %46, %43
  %57 = load i64, i64* @unicode_OS, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %56
  %60 = load i32, i32* @foobarW, align 4
  %61 = call i32 @FindAtomW(i32 %60)
  %62 = load i32, i32* %1, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* @FOOBARW, align 4
  %67 = call i32 @FindAtomW(i32 %66)
  %68 = load i32, i32* %1, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %72 = load i32, i32* @_foobarW, align 4
  %73 = call i32 @FindAtomW(i32 %72)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %78

78:                                               ; preds = %59, %56
  %79 = call i32 @SetLastError(i32 -559038737)
  %80 = call i32 @AddAtomA(i8* null)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = call i32 (...) @GetLastError()
  %84 = icmp eq i32 %83, -559038737
  br label %85

85:                                               ; preds = %82, %78
  %86 = phi i1 [ false, %78 ], [ %84, %82 ]
  %87 = zext i1 %86 to i32
  %88 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %89 = load i64, i64* @unicode_OS, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %85
  %92 = call i32 @SetLastError(i32 -559038737)
  %93 = call i32 @AddAtomW(i32 0)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = call i32 (...) @GetLastError()
  %97 = icmp eq i32 %96, -559038737
  br label %98

98:                                               ; preds = %95, %91
  %99 = phi i1 [ false, %91 ], [ %97, %95 ]
  %100 = zext i1 %99 to i32
  %101 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  br label %102

102:                                              ; preds = %98, %85
  %103 = call i32 @SetLastError(i32 -559038737)
  store i32 1, i32* %3, align 4
  br label %104

104:                                              ; preds = %140, %102
  %105 = load i32, i32* %3, align 4
  %106 = icmp sle i32 %105, 49151
  br i1 %106, label %107, label %143

107:                                              ; preds = %104
  %108 = call i32 @SetLastError(i32 -559038737)
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i8*
  %112 = call i32 @AddAtomA(i8* %111)
  %113 = load i32, i32* %3, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %107
  %116 = call i32 (...) @GetLastError()
  %117 = icmp eq i32 %116, -559038737
  br label %118

118:                                              ; preds = %115, %107
  %119 = phi i1 [ false, %107 ], [ %117, %115 ]
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %3, align 4
  %122 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %121)
  %123 = load i64, i64* @unicode_OS, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %118
  %126 = call i32 @SetLastError(i32 -559038737)
  %127 = load i32, i32* %3, align 4
  %128 = call i32 @AddAtomW(i32 %127)
  %129 = load i32, i32* %3, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = call i32 (...) @GetLastError()
  %133 = icmp eq i32 %132, -559038737
  br label %134

134:                                              ; preds = %131, %125
  %135 = phi i1 [ false, %125 ], [ %133, %131 ]
  %136 = zext i1 %135 to i32
  %137 = load i32, i32* %3, align 4
  %138 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %134, %118
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %3, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %3, align 4
  br label %104

143:                                              ; preds = %104
  store i32 49152, i32* %3, align 4
  br label %144

144:                                              ; preds = %168, %143
  %145 = load i32, i32* %3, align 4
  %146 = icmp sle i32 %145, 65535
  br i1 %146, label %147, label %171

147:                                              ; preds = %144
  %148 = load i32, i32* %3, align 4
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i8*
  %151 = call i32 @AddAtomA(i8* %150)
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = load i32, i32* %3, align 4
  %156 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %155)
  %157 = load i64, i64* @unicode_OS, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %147
  %160 = load i32, i32* %3, align 4
  %161 = call i32 @AddAtomW(i32 %160)
  %162 = icmp ne i32 %161, 0
  %163 = xor i1 %162, true
  %164 = zext i1 %163 to i32
  %165 = load i32, i32* %3, align 4
  %166 = call i32 (i32, i8*, ...) @ok(i32 %164, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %165)
  br label %167

167:                                              ; preds = %159, %147
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %3, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %3, align 4
  br label %144

171:                                              ; preds = %144
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @AddAtomA(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @FindAtomA(i8*) #1

declare dso_local i32 @AddAtomW(i32) #1

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @FindAtomW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
