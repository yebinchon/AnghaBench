; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_strtol.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_strtol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_strtol.neg = internal global [4 x i8] c"-0x\00", align 1
@EBADF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"-1234\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"wrong value %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"wrong errno %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"1234\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"wrong value %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"2147483647L\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"-2147483648L\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"4294967295UL\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"9223372036854775807L\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"-2\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"-4294967294\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"-4294967295\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"-4294967296\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"e = %p, neg = %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_strtol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_strtol() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @EBADF, align 4
  store i32 %4, i32* @errno, align 4
  %5 = call i32 @strtol(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %1, i32 0)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp eq i32 %6, -1234
  %8 = zext i1 %7 to i32
  %9 = load i32, i32* %2, align 4
  %10 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @errno, align 4
  %12 = load i32, i32* @EBADF, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %0
  %15 = load i32, i32* @errno, align 4
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i64 @broken(i32 %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %14, %0
  %21 = phi i1 [ true, %0 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EBADF, align 4
  store i32 %25, i32* @errno, align 4
  %26 = call i32 @strtoul(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %1, i32 0)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, 1234
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %3, align 4
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @errno, align 4
  %33 = load i32, i32* @EBADF, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %20
  %36 = load i32, i32* @errno, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i64 @broken(i32 %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %35, %20
  %42 = phi i1 [ true, %20 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* @errno, align 4
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EBADF, align 4
  store i32 %46, i32* @errno, align 4
  %47 = call i32 @strtol(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %1, i32 0)
  store i32 %47, i32* %2, align 4
  %48 = load i32, i32* %2, align 4
  %49 = icmp eq i32 %48, 2147483647
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %2, align 4
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @errno, align 4
  %54 = load i32, i32* @EBADF, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %41
  %57 = load i32, i32* @errno, align 4
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i64 @broken(i32 %59)
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %56, %41
  %63 = phi i1 [ true, %41 ], [ %61, %56 ]
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* @errno, align 4
  %66 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EBADF, align 4
  store i32 %67, i32* @errno, align 4
  %68 = call i32 @strtol(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %1, i32 0)
  store i32 %68, i32* %2, align 4
  %69 = load i32, i32* %2, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp eq i64 %70, -2147483648
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %2, align 4
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @errno, align 4
  %76 = load i32, i32* @EBADF, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %62
  %79 = load i32, i32* @errno, align 4
  %80 = icmp eq i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i64 @broken(i32 %81)
  %83 = icmp ne i64 %82, 0
  br label %84

84:                                               ; preds = %78, %62
  %85 = phi i1 [ true, %62 ], [ %83, %78 ]
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* @errno, align 4
  %88 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @EBADF, align 4
  store i32 %89, i32* @errno, align 4
  %90 = call i32 @strtoul(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %1, i32 0)
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = icmp eq i64 %92, 4294967295
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %3, align 4
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @errno, align 4
  %98 = load i32, i32* @EBADF, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %84
  %101 = load i32, i32* @errno, align 4
  %102 = icmp eq i32 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i64 @broken(i32 %103)
  %105 = icmp ne i64 %104, 0
  br label %106

106:                                              ; preds = %100, %84
  %107 = phi i1 [ true, %84 ], [ %105, %100 ]
  %108 = zext i1 %107 to i32
  %109 = load i32, i32* @errno, align 4
  %110 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  store i32 0, i32* @errno, align 4
  %111 = call i32 @strtol(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8** %1, i32 0)
  store i32 %111, i32* %2, align 4
  %112 = load i32, i32* %2, align 4
  %113 = icmp eq i32 %112, 2147483647
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %2, align 4
  %116 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @errno, align 4
  %118 = load i32, i32* @ERANGE, align 4
  %119 = icmp eq i32 %117, %118
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* @errno, align 4
  %122 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %121)
  store i32 0, i32* @errno, align 4
  %123 = call i32 @strtoul(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8** %1, i32 0)
  store i32 %123, i32* %3, align 4
  %124 = load i32, i32* %3, align 4
  %125 = sext i32 %124 to i64
  %126 = icmp eq i64 %125, 4294967295
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %3, align 4
  %129 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* @errno, align 4
  %131 = load i32, i32* @ERANGE, align 4
  %132 = icmp eq i32 %130, %131
  %133 = zext i1 %132 to i32
  %134 = load i32, i32* @errno, align 4
  %135 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  store i32 0, i32* @errno, align 4
  %136 = call i32 @strtoul(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** null, i32 0)
  store i32 %136, i32* %3, align 4
  %137 = load i32, i32* %3, align 4
  %138 = icmp eq i32 %137, -2
  %139 = zext i1 %138 to i32
  %140 = load i32, i32* %3, align 4
  %141 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* @errno, align 4
  %143 = icmp eq i32 %142, 0
  %144 = zext i1 %143 to i32
  %145 = load i32, i32* @errno, align 4
  %146 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %145)
  store i32 0, i32* @errno, align 4
  %147 = call i32 @strtoul(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8** null, i32 0)
  store i32 %147, i32* %3, align 4
  %148 = load i32, i32* %3, align 4
  %149 = icmp eq i32 %148, 2
  %150 = zext i1 %149 to i32
  %151 = load i32, i32* %3, align 4
  %152 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* @errno, align 4
  %154 = icmp eq i32 %153, 0
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* @errno, align 4
  %157 = call i32 (i32, i8*, ...) @ok(i32 %155, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %156)
  store i32 0, i32* @errno, align 4
  %158 = call i32 @strtoul(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8** null, i32 0)
  store i32 %158, i32* %3, align 4
  %159 = load i32, i32* %3, align 4
  %160 = icmp eq i32 %159, 1
  %161 = zext i1 %160 to i32
  %162 = load i32, i32* %3, align 4
  %163 = call i32 (i32, i8*, ...) @ok(i32 %161, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %162)
  %164 = load i32, i32* @errno, align 4
  %165 = icmp eq i32 %164, 0
  %166 = zext i1 %165 to i32
  %167 = load i32, i32* @errno, align 4
  %168 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %167)
  store i32 0, i32* @errno, align 4
  %169 = call i32 @strtoul(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8** null, i32 0)
  store i32 %169, i32* %3, align 4
  %170 = load i32, i32* %3, align 4
  %171 = icmp eq i32 %170, 1
  %172 = zext i1 %171 to i32
  %173 = load i32, i32* %3, align 4
  %174 = call i32 (i32, i8*, ...) @ok(i32 %172, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* @errno, align 4
  %176 = load i32, i32* @ERANGE, align 4
  %177 = icmp eq i32 %175, %176
  %178 = zext i1 %177 to i32
  %179 = load i32, i32* @errno, align 4
  %180 = call i32 (i32, i8*, ...) @ok(i32 %178, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %179)
  store i32 0, i32* @errno, align 4
  %181 = call i32 @strtol(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_strtol.neg, i64 0, i64 0), i8** %1, i32 0)
  store i32 %181, i32* %2, align 4
  %182 = load i32, i32* %2, align 4
  %183 = icmp eq i32 %182, 0
  %184 = zext i1 %183 to i32
  %185 = load i32, i32* %2, align 4
  %186 = call i32 (i32, i8*, ...) @ok(i32 %184, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %185)
  %187 = load i32, i32* @errno, align 4
  %188 = icmp eq i32 %187, 0
  %189 = zext i1 %188 to i32
  %190 = load i32, i32* @errno, align 4
  %191 = call i32 (i32, i8*, ...) @ok(i32 %189, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %190)
  %192 = load i8*, i8** %1, align 8
  %193 = icmp eq i8* %192, getelementptr inbounds ([4 x i8], [4 x i8]* @test_strtol.neg, i64 0, i64 0)
  %194 = zext i1 %193 to i32
  %195 = load i8*, i8** %1, align 8
  %196 = call i32 (i32, i8*, ...) @ok(i32 %194, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* %195, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_strtol.neg, i64 0, i64 0))
  ret void
}

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
