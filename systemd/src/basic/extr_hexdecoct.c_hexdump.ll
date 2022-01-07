; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_hexdecoct.c_hexdump.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_hexdecoct.c_hexdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"%04x  \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hexdump(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = icmp eq i64 %15, 0
  br label %17

17:                                               ; preds = %14, %3
  %18 = phi i1 [ true, %3 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = load i32*, i32** @stdout, align 8
  store i32* %24, i32** %4, align 8
  br label %25

25:                                               ; preds = %23, %17
  br label %26

26:                                               ; preds = %103, %25
  %27 = load i64, i64* %6, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %110

29:                                               ; preds = %26
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @fprintf(i32* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i64 0, i64* %9, align 8
  br label %33

33:                                               ; preds = %57, %29
  %34 = load i64, i64* %9, align 8
  %35 = icmp ult i64 %34, 16
  br i1 %35, label %36, label %60

36:                                               ; preds = %33
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp uge i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %41)
  br label %50

43:                                               ; preds = %36
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @fprintf(i32* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %43, %40
  %51 = load i64, i64* %9, align 8
  %52 = icmp eq i64 %51, 7
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @fputc(i8 signext 32, i32* %54)
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %9, align 8
  br label %33

60:                                               ; preds = %33
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @fputc(i8 signext 32, i32* %61)
  store i64 0, i64* %9, align 8
  br label %63

63:                                               ; preds = %94, %60
  %64 = load i64, i64* %9, align 8
  %65 = icmp ult i64 %64, 16
  br i1 %65, label %66, label %97

66:                                               ; preds = %63
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %6, align 8
  %69 = icmp uge i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @fputc(i8 signext 32, i32* %71)
  br label %93

73:                                               ; preds = %66
  %74 = load i32*, i32** %7, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @isprint(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load i32*, i32** %7, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = trunc i32 %84 to i8
  %86 = sext i8 %85 to i32
  br label %88

87:                                               ; preds = %73
  br label %88

88:                                               ; preds = %87, %80
  %89 = phi i32 [ %86, %80 ], [ 46, %87 ]
  %90 = trunc i32 %89 to i8
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @fputc(i8 signext %90, i32* %91)
  br label %93

93:                                               ; preds = %88, %70
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %9, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %9, align 8
  br label %63

97:                                               ; preds = %63
  %98 = load i32*, i32** %4, align 8
  %99 = call i32 @fputc(i8 signext 10, i32* %98)
  %100 = load i64, i64* %6, align 8
  %101 = icmp ult i64 %100, 16
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %110

103:                                              ; preds = %97
  %104 = load i32, i32* %8, align 4
  %105 = add i32 %104, 16
  store i32 %105, i32* %8, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 16
  store i32* %107, i32** %7, align 8
  %108 = load i64, i64* %6, align 8
  %109 = sub i64 %108, 16
  store i64 %109, i64* %6, align 8
  br label %26

110:                                              ; preds = %102, %26
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i64 @isprint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
