; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_showwal.c_print_decode_line.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_showwal.c_print_decode_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c" %03x: %02x\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"  0x%08x\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"   %9d\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%s  %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i8*)* @print_decode_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_decode_line(i8* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [100 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  store i32 %20, i32* %13, align 4
  %21 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %22 = load i32, i32* %7, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %28)
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %31 = call i64 @strlen(i8* %30)
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %33

33:                                               ; preds = %77, %5
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %80

36:                                               ; preds = %33
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 %42
  %44 = call i32 (i8*, i8*, ...) @sprintf(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %69

45:                                               ; preds = %36
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 %47
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %49, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = call i32 (i8*, i8*, ...) @sprintf(i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %13, align 4
  %59 = mul nsw i32 %58, 256
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %60, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = add nsw i32 %59, %67
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %45, %40
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 %71
  %73 = call i64 @strlen(i8* %72)
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %33

80:                                               ; preds = %33
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 %85
  %87 = load i32, i32* %13, align 4
  %88 = call i32 (i8*, i8*, ...) @sprintf(i8* %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  br label %95

89:                                               ; preds = %80
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 %91
  %93 = load i32, i32* %13, align 4
  %94 = call i32 (i8*, i8*, ...) @sprintf(i8* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %89, %83
  %96 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %97 = load i8*, i8** %10, align 8
  %98 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %96, i8* %97)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
