; ModuleID = '/home/carl/AnghaBench/vlc/src/extr_libvlc.c_GetFilenames.c'
source_filename = "/home/carl/AnghaBench/vlc/src/extr_libvlc.c_GetFilenames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"options %s without item\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"://\00", align 1
@VLC_INPUT_OPTION_TRUSTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8**)* @GetFilenames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GetFilenames(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  br label %9

9:                                                ; preds = %81, %55, %3
  %10 = load i32, i32* %5, align 4
  %11 = icmp ugt i32 %10, 0
  br i1 %11, label %12, label %87

12:                                               ; preds = %9
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %37, %12
  %14 = load i8**, i8*** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = add i32 %15, -1
  store i32 %16, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %14, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 58
  br i1 %23, label %24, label %38

24:                                               ; preds = %13
  %25 = load i32, i32* %7, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i32*, i32** %4, align 8
  %31 = load i8**, i8*** %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @msg_Warn(i32* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %35)
  br label %87

37:                                               ; preds = %24
  br label %13

38:                                               ; preds = %13
  store i8* null, i8** %8, align 8
  %39 = load i8**, i8*** %6, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32* @strstr(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %38
  %47 = load i8**, i8*** %6, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @vlc_path2uri(i8* %51, i32* null)
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %46
  br label %9

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %38
  %58 = load i32*, i32** %4, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i8*, i8** %8, align 8
  br label %69

63:                                               ; preds = %57
  %64 = load i8**, i8*** %6, align 8
  %65 = load i32, i32* %5, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  br label %69

69:                                               ; preds = %63, %61
  %70 = phi i8* [ %62, %61 ], [ %68, %63 ]
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i8**, i8*** %6, align 8
  %76 = load i32, i32* %5, align 4
  %77 = add i32 %76, 1
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %75, i64 %78
  br label %81

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80, %74
  %82 = phi i8** [ %79, %74 ], [ null, %80 ]
  %83 = load i32, i32* @VLC_INPUT_OPTION_TRUSTED, align 4
  %84 = call i32 @intf_InsertItem(i32* %58, i8* %70, i32 %71, i8** %82, i32 %83)
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @free(i8* %85)
  br label %9

87:                                               ; preds = %29, %9
  ret void
}

declare dso_local i32 @msg_Warn(i32*, i8*, i8*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i8* @vlc_path2uri(i8*, i32*) #1

declare dso_local i32 @intf_InsertItem(i32*, i8*, i32, i8**, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
