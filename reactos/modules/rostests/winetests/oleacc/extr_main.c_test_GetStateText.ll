; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleacc/extr_main.c_test_GetStateText.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleacc/extr_main.c_test_GetStateText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"GetStateText failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"got %d, expected %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"ptr was not changed\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"got %s, expected %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"got %d, expected 0\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"buf[0] = '%c'\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"%d) GetStateText failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"31) GetStateText succeeded: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [70 x i8] c"GetStateText(2,...) returned different data than GetStateText(3,...)\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"ptr was changed\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"bufa[0] = '%c'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetStateText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetStateText() #0 {
  %1 = alloca [1024 x i32], align 16
  %2 = alloca [1024 x i32], align 16
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @GetStateTextW(i32 0, i32* null, i32 1024)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 (i32, i8*, ...) @ok(i32 %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  %11 = bitcast i8** %4 to i32*
  %12 = call i32 @GetStateTextW(i32 0, i32* %11, i32 0)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i8*, i8** %4, align 8
  %21 = icmp ne i8* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %24 = getelementptr inbounds [1024 x i32], [1024 x i32]* %1, i64 0, i64 0
  %25 = call i32 @GetStateTextW(i32 0, i32* %24, i32 1024)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31)
  %33 = getelementptr inbounds [1024 x i32], [1024 x i32]* %1, i64 0, i64 0
  %34 = load i8*, i8** %4, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memcmp(i32* %33, i32* %35, i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = getelementptr inbounds [1024 x i32], [1024 x i32]* %1, i64 0, i64 0
  %45 = bitcast i32* %44 to i8*
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @wine_dbgstr_wn(i8* %45, i32 %46)
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @wine_dbgstr_wn(i8* %48, i32 %49)
  %51 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %47, i32 %50)
  %52 = getelementptr inbounds [1024 x i32], [1024 x i32]* %1, i64 0, i64 0
  %53 = call i32 @GetStateTextW(i32 0, i32* %52, i32 1)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %5, align 4
  %59 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  %60 = getelementptr inbounds [1024 x i32], [1024 x i32]* %1, i64 0, i64 0
  %61 = load i32, i32* %60, align 16
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = getelementptr inbounds [1024 x i32], [1024 x i32]* %1, i64 0, i64 0
  %66 = load i32, i32* %65, align 16
  %67 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %79, %0
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 31
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = shl i32 1, %72
  %74 = getelementptr inbounds [1024 x i32], [1024 x i32]* %1, i64 0, i64 0
  %75 = call i32 @GetStateTextW(i32 %73, i32* %74, i32 1024)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %71
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %68

82:                                               ; preds = %68
  %83 = getelementptr inbounds [1024 x i32], [1024 x i32]* %1, i64 0, i64 0
  %84 = call i32 @GetStateTextW(i32 -2147483648, i32* %83, i32 1024)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %5, align 4
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %89)
  %91 = getelementptr inbounds [1024 x i32], [1024 x i32]* %1, i64 0, i64 0
  %92 = call i32 @GetStateTextW(i32 2, i32* %91, i32 1024)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %95 = getelementptr inbounds [1024 x i32], [1024 x i32]* %2, i64 0, i64 0
  %96 = call i32 @GetStateTextW(i32 3, i32* %95, i32 1024)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %104)
  %106 = getelementptr inbounds [1024 x i32], [1024 x i32]* %1, i64 0, i64 0
  %107 = getelementptr inbounds [1024 x i32], [1024 x i32]* %2, i64 0, i64 0
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 4
  %111 = trunc i64 %110 to i32
  %112 = call i32 @memcmp(i32* %106, i32* %107, i32 %111)
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.8, i64 0, i64 0))
  %117 = call i32 @GetStateTextA(i32 0, i8* null, i32 1024)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  %120 = bitcast i8** %4 to i8*
  %121 = call i32 @GetStateTextA(i32 0, i8* %120, i32 0)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = load i32, i32* %5, align 4
  %127 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %126)
  %128 = load i8*, i8** %4, align 8
  %129 = icmp eq i8* %128, null
  %130 = zext i1 %129 to i32
  %131 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %132 = call i32 @GetStateTextA(i32 0, i8* null, i32 0)
  store i32 %132, i32* %5, align 4
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp eq i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %6, align 4
  %139 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %137, i32 %138)
  %140 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %141 = call i32 @GetStateTextA(i32 0, i8* %140, i32 1024)
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp eq i32 %142, %143
  %145 = zext i1 %144 to i32
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* %6, align 4
  %148 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %146, i32 %147)
  %149 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %150 = call i32 @GetStateTextA(i32 0, i8* %149, i32 1)
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %5, align 4
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = load i32, i32* %5, align 4
  %156 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %155)
  %157 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %158 = load i8, i8* %157, align 16
  %159 = icmp ne i8 %158, 0
  %160 = xor i1 %159, true
  %161 = zext i1 %160 to i32
  %162 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %163 = load i8, i8* %162, align 16
  %164 = sext i8 %163 to i32
  %165 = call i32 (i32, i8*, ...) @ok(i32 %161, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %164)
  store i32 0, i32* %7, align 4
  br label %166

166:                                              ; preds = %177, %82
  %167 = load i32, i32* %7, align 4
  %168 = icmp slt i32 %167, 31
  br i1 %168, label %169, label %180

169:                                              ; preds = %166
  %170 = load i32, i32* %7, align 4
  %171 = shl i32 1, %170
  %172 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %173 = call i32 @GetStateTextA(i32 %171, i8* %172, i32 1024)
  store i32 %173, i32* %5, align 4
  %174 = load i32, i32* %5, align 4
  %175 = load i32, i32* %7, align 4
  %176 = call i32 (i32, i8*, ...) @ok(i32 %174, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %169
  %178 = load i32, i32* %7, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %7, align 4
  br label %166

180:                                              ; preds = %166
  %181 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %182 = call i32 @GetStateTextA(i32 -2147483648, i8* %181, i32 1024)
  store i32 %182, i32* %5, align 4
  %183 = load i32, i32* %5, align 4
  %184 = icmp ne i32 %183, 0
  %185 = xor i1 %184, true
  %186 = zext i1 %185 to i32
  %187 = load i32, i32* %5, align 4
  %188 = call i32 (i32, i8*, ...) @ok(i32 %186, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %187)
  ret void
}

declare dso_local i32 @GetStateTextW(i32, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @wine_dbgstr_wn(i8*, i32) #1

declare dso_local i32 @GetStateTextA(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
