; ModuleID = '/home/carl/AnghaBench/vlc/src/text/extr_strings.c_vlc_b64_decode_binary_to_buffer.c'
source_filename = "/home/carl/AnghaBench/vlc/src/text/extr_strings.c_vlc_b64_decode_binary_to_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vlc_b64_decode_binary_to_buffer.b64 = internal constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@CHAR_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Oops\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vlc_b64_decode_binary_to_buffer(i8* %0, i64 %1, i8* noalias %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @CHAR_BIT, align 4
  %15 = icmp eq i32 %14, 8
  %16 = zext i1 %15 to i32
  %17 = call i32 @static_assert(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %51, %3
  %19 = load i64, i64* %5, align 8
  %20 = icmp ugt i64 %19, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %18
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %7, align 8
  %24 = load i8, i8* %22, align 1
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* @vlc_b64_decode_binary_to_buffer.b64, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %11, align 1
  %28 = load i8, i8* %11, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %56

32:                                               ; preds = %21
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = load i8, i8* %9, align 1
  %37 = sext i8 %36 to i32
  %38 = load i32, i32* %10, align 4
  %39 = shl i32 %37, %38
  %40 = load i8, i8* %11, align 1
  %41 = sext i8 %40 to i32
  %42 = load i32, i32* %10, align 4
  %43 = sub nsw i32 6, %42
  %44 = ashr i32 %41, %43
  %45 = or i32 %39, %44
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %8, align 8
  store i8 %46, i8* %47, align 1
  %49 = load i64, i64* %5, align 8
  %50 = add i64 %49, -1
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %35, %32
  %52 = load i8, i8* %11, align 1
  store i8 %52, i8* %9, align 1
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 2
  %55 = and i32 %54, 7
  store i32 %55, i32* %10, align 4
  br label %18

56:                                               ; preds = %31, %18
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  ret i64 %61
}

declare dso_local i32 @static_assert(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
