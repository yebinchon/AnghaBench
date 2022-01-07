; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_stdio.c_DumpBufferHex.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_stdio.c_DumpBufferHex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"  %08x  \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DumpBufferHex(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [80 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %5, align 8
  %11 = bitcast [80 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 80, i1 false)
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %123, %2
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %126

16:                                               ; preds = %12
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %21 = call i32 @uprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %23, align 16
  %24 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %25 = call i64 @strlen(i8* %24)
  %26 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 %25
  %27 = load i64, i64* %6, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 (i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %30

30:                                               ; preds = %61, %22
  %31 = load i64, i64* %8, align 8
  %32 = icmp ult i64 %31, 16
  br i1 %32, label %33, label %66

33:                                               ; preds = %30
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %34, %35
  %37 = load i64, i64* %4, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %41 = call i64 @strlen(i8* %40)
  %42 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 %41
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %44, %45
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = call i32 (i8*, i8*, ...) @sprintf(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %56

51:                                               ; preds = %33
  %52 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %53 = call i64 @strlen(i8* %52)
  %54 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 %53
  %55 = call i32 (i8*, i8*, ...) @sprintf(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %51, %39
  %57 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %58 = call i64 @strlen(i8* %57)
  %59 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 %58
  %60 = call i32 (i8*, i8*, ...) @sprintf(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %61

61:                                               ; preds = %56
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %8, align 8
  br label %30

66:                                               ; preds = %30
  %67 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %68 = call i64 @strlen(i8* %67)
  %69 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 %68
  %70 = call i32 (i8*, i8*, ...) @sprintf(i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %71

71:                                               ; preds = %117, %66
  %72 = load i64, i64* %8, align 8
  %73 = icmp ult i64 %72, 16
  br i1 %73, label %74, label %122

74:                                               ; preds = %71
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = add i64 %75, %76
  %78 = load i64, i64* %4, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %116

80:                                               ; preds = %74
  %81 = load i8*, i8** %5, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* %7, align 8
  %84 = add i64 %82, %83
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp slt i32 %87, 32
  br i1 %88, label %98, label %89

89:                                               ; preds = %80
  %90 = load i8*, i8** %5, align 8
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* %7, align 8
  %93 = add i64 %91, %92
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp sgt i32 %96, 126
  br i1 %97, label %98, label %103

98:                                               ; preds = %89, %80
  %99 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %100 = call i64 @strlen(i8* %99)
  %101 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 %100
  %102 = call i32 (i8*, i8*, ...) @sprintf(i8* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %115

103:                                              ; preds = %89
  %104 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %105 = call i64 @strlen(i8* %104)
  %106 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 %105
  %107 = load i8*, i8** %5, align 8
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* %7, align 8
  %110 = add i64 %108, %109
  %111 = getelementptr inbounds i8, i8* %107, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = call i32 (i8*, i8*, ...) @sprintf(i8* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %103, %98
  br label %116

116:                                              ; preds = %115, %74
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %7, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %7, align 8
  %120 = load i64, i64* %8, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %8, align 8
  br label %71

122:                                              ; preds = %71
  br label %123

123:                                              ; preds = %122
  %124 = load i64, i64* %6, align 8
  %125 = add i64 %124, 16
  store i64 %125, i64* %6, align 8
  br label %12

126:                                              ; preds = %12
  %127 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %128 = call i32 @uprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %127)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @uprintf(i8*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i64 @strlen(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
