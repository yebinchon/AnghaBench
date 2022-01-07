; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_update_crypto.c_hash_from_text.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_update_crypto.c_hash_from_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@TEXT_SIGNATURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hash_from_text(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @gcry_md_open(i32* %6, i32 %10, i32 0)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %70

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TEXT_SIGNATURE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %60

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %58, %20
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %59

25:                                               ; preds = %21
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @strcspn(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @gcry_md_write(i32 %31, i8* %32, i64 %33)
  %35 = load i64, i64* %7, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 %35
  store i8* %37, i8** %4, align 8
  br label %38

38:                                               ; preds = %30, %25
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @gcry_md_putc(i32 %39, i8 signext 13)
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @gcry_md_putc(i32 %41, i8 signext 10)
  %43 = load i8*, i8** %4, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 13
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %4, align 8
  br label %50

50:                                               ; preds = %47, %38
  %51 = load i8*, i8** %4, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 10
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %4, align 8
  br label %58

58:                                               ; preds = %55, %50
  br label %21

59:                                               ; preds = %21
  br label %66

60:                                               ; preds = %14
  %61 = load i32, i32* %6, align 4
  %62 = load i8*, i8** %4, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = call i64 @strlen(i8* %63)
  %65 = call i32 @gcry_md_write(i32 %61, i8* %62, i64 %64)
  br label %66

66:                                               ; preds = %60, %59
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %69 = call i32* @hash_finish(i32 %67, %struct.TYPE_4__* %68)
  store i32* %69, i32** %3, align 8
  br label %70

70:                                               ; preds = %66, %13
  %71 = load i32*, i32** %3, align 8
  ret i32* %71
}

declare dso_local i64 @gcry_md_open(i32*, i32, i32) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @gcry_md_write(i32, i8*, i64) #1

declare dso_local i32 @gcry_md_putc(i32, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @hash_finish(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
