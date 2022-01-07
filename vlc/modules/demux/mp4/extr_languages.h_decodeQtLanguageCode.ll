; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_languages.h_decodeQtLanguageCode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_languages.h_decodeQtLanguageCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@decodeQtLanguageCode.psz_qt_to_iso639_2T_lower = internal global i8* getelementptr inbounds ([286 x i8], [286 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [286 x i8] c"engfradeuitanldswespadanpornorhebjpnarafingreislmltturhrvzhourdhinthakorlitpolhunestlavsmefaofasruszhonldglesqironcesslkslvyidsrpmkdbulukrbeluzbkazazeazehyekatmolkirtgktukmonmonpuskurkassndbodnepsanmarbenasmgujpanorimalkantamtelsinmyakhmlaovieindtglmsamsaamhtirormsomswakinrunnyamlgepo\00", align 1
@decodeQtLanguageCode.psz_qt_to_iso639_2T_upper = internal global i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"cymeuscatlatquegrnaymtatuigdzojawsunglgafrbreikuglaglvgletongre\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32*)* @decodeQtLanguageCode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decodeQtLanguageCode(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 1024
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 32767
  br i1 %14, label %15, label %45

15:                                               ; preds = %12, %3
  %16 = load i32*, i32** %7, align 8
  store i32 1, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp sle i32 %17, 94
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i8*, i8** @decodeQtLanguageCode.psz_qt_to_iso639_2T_lower, align 8
  %21 = load i32, i32* %5, align 4
  %22 = mul nsw i32 %21, 3
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  store i8* %24, i8** %8, align 8
  br label %41

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = icmp sge i32 %26, 128
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = icmp sle i32 %29, 148
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = sub nsw i32 %32, 128
  store i32 %33, i32* %5, align 4
  %34 = load i8*, i8** @decodeQtLanguageCode.psz_qt_to_iso639_2T_upper, align 8
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 %35, 3
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  store i8* %38, i8** %8, align 8
  br label %40

39:                                               ; preds = %28, %25
  store i32 0, i32* %4, align 4
  br label %74

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %19
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @memcpy(i8* %42, i8* %43, i32 3)
  br label %73

45:                                               ; preds = %12
  %46 = load i32*, i32** %7, align 8
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %47, 21956
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @memset(i8* %50, i32 0, i32 3)
  store i32 0, i32* %4, align 4
  br label %74

52:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %69, %52
  %54 = load i32, i32* %9, align 4
  %55 = icmp ult i32 %54, 3
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %9, align 4
  %59 = sub i32 2, %58
  %60 = mul i32 %59, 5
  %61 = ashr i32 %57, %60
  %62 = and i32 %61, 31
  %63 = add nsw i32 %62, 96
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* %9, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  store i8 %64, i8* %68, align 1
  br label %69

69:                                               ; preds = %56
  %70 = load i32, i32* %9, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %53

72:                                               ; preds = %53
  br label %73

73:                                               ; preds = %72, %41
  store i32 1, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %49, %39
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
