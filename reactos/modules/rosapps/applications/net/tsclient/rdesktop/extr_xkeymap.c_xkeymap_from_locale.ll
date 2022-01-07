; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xkeymap.c_xkeymap_from_locale.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xkeymap.c_xkeymap_from_locale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@True = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xkeymap_from_locale(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i8* @xstrdup(i8* %9)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i8* @strrchr(i8* %11, i8 signext 46)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i8*, i8** %7, align 8
  store i8 0, i8* %16, align 1
  br label %17

17:                                               ; preds = %15, %2
  %18 = load i8*, i8** %6, align 8
  %19 = call i8* @strrchr(i8* %18, i8 signext 64)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 8
  store i8 0, i8* %23, align 1
  br label %24

24:                                               ; preds = %22, %17
  %25 = load i8*, i8** %6, align 8
  %26 = call i8* @strrchr(i8* %25, i8 signext 95)
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i8*, i8** %7, align 8
  store i8 45, i8* %30, align 1
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i8*, i8** %6, align 8
  store i8* %32, i8** %7, align 8
  br label %33

33:                                               ; preds = %37, %31
  %34 = load i8*, i8** %7, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i8*, i8** %7, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = call signext i8 @tolower(i32 %40)
  %42 = load i8*, i8** %7, align 8
  store i8 %41, i8* %42, align 1
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %7, align 8
  br label %33

45:                                               ; preds = %33
  %46 = load i8*, i8** %6, align 8
  %47 = call i32* @xkeymap_open(i8* %46)
  store i32* %47, i32** %8, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load i8*, i8** %6, align 8
  %52 = call i8* @strrchr(i8* %51, i8 signext 45)
  store i8* %52, i8** %7, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i8*, i8** %7, align 8
  store i8 0, i8* %56, align 1
  br label %57

57:                                               ; preds = %55, %50
  %58 = load i8*, i8** %6, align 8
  %59 = call i32* @xkeymap_open(i8* %58)
  store i32* %59, i32** %8, align 8
  br label %60

60:                                               ; preds = %57, %45
  %61 = load i32*, i32** %8, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @fclose(i32* %64)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @STRNCPY(i32 %68, i8* %69, i32 4)
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @xfree(i8* %71)
  %73 = load i32, i32* @True, align 4
  store i32 %73, i32* %3, align 4
  br label %78

74:                                               ; preds = %60
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @xfree(i8* %75)
  %77 = load i32, i32* @False, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %63
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local signext i8 @tolower(i32) #1

declare dso_local i32* @xkeymap_open(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @STRNCPY(i32, i8*, i32) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
