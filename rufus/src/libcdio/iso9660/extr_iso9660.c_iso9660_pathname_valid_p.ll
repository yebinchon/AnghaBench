; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660.c_iso9660_pathname_valid_p.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660.c_iso9660_pathname_valid_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_ISOPATHNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iso9660_pathname_valid_p(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @cdio_assert(i32 %11)
  %13 = load i8*, i8** %3, align 8
  %14 = call i8* @strrchr(i8* %13, i8 signext 47)
  store i8* %14, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  %18 = call i8* @strdup(i8* %17)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @strrchr(i8* %19, i8 signext 47)
  store i8 0, i8* %20, align 1
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @iso9660_dirname_valid_p(i8* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @free(i8* %23)
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %90

28:                                               ; preds = %16
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %4, align 8
  br label %33

31:                                               ; preds = %1
  %32 = load i8*, i8** %3, align 8
  store i8* %32, i8** %4, align 8
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = load i32, i32* @MAX_ISOPATHNAME, align 4
  %37 = sub nsw i32 %36, 6
  %38 = icmp sgt i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %90

40:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %82, %40
  %42 = load i8*, i8** %4, align 8
  %43 = load i8, i8* %42, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %45, label %85

45:                                               ; preds = %41
  %46 = load i8*, i8** %4, align 8
  %47 = load i8, i8* %46, align 1
  %48 = call i64 @iso9660_is_dchar(i8 signext %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = icmp sgt i32 %56, 8
  br i1 %57, label %61, label %62

58:                                               ; preds = %50
  %59 = load i32, i32* %7, align 4
  %60 = icmp sgt i32 %59, 3
  br i1 %60, label %61, label %62

61:                                               ; preds = %58, %55
  store i32 0, i32* %2, align 4
  br label %90

62:                                               ; preds = %58, %55
  br label %81

63:                                               ; preds = %45
  %64 = load i8*, i8** %4, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 46
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %90

74:                                               ; preds = %68
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %90

78:                                               ; preds = %74
  store i32 0, i32* %7, align 4
  br label %80

79:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %90

80:                                               ; preds = %78
  br label %81

81:                                               ; preds = %80, %62
  br label %82

82:                                               ; preds = %81
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %4, align 8
  br label %41

85:                                               ; preds = %41
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 1
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 0, i32* %2, align 4
  br label %90

89:                                               ; preds = %85
  store i32 1, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %88, %79, %77, %73, %61, %39, %27
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @cdio_assert(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @iso9660_dirname_valid_p(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @iso9660_is_dchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
