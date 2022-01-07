; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_util.c_sqlite3GetVarint32.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_util.c_sqlite3GetVarint32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_MAX_U32 = common dso_local global i32 0, align 4
@SLOT_4_2_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3GetVarint32(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 128
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  store i32 1, i32* %3, align 4
  br label %87

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 128
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 127
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = shl i32 %31, 7
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %33, %34
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  store i32 2, i32* %3, align 4
  br label %87

37:                                               ; preds = %19
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = shl i32 %40, 14
  store i32 %41, i32* %6, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, 128
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %37
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, 2080895
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, 127
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = shl i32 %55, 7
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %57, %58
  %60 = load i32*, i32** %5, align 8
  store i32 %59, i32* %60, align 4
  store i32 3, i32* %3, align 4
  br label %87

61:                                               ; preds = %37
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 -2
  store i8* %63, i8** %4, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @sqlite3GetVarint(i8* %64, i32* %8)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp sgt i32 %66, 3
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* %9, align 4
  %70 = icmp sle i32 %69, 9
  br label %71

71:                                               ; preds = %68, %61
  %72 = phi i1 [ false, %61 ], [ %70, %68 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @SQLITE_MAX_U32, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32*, i32** %5, align 8
  store i32 -1, i32* %81, align 4
  br label %85

82:                                               ; preds = %71
  %83 = load i32, i32* %8, align 4
  %84 = load i32*, i32** %5, align 8
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %82, %80
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %50, %28, %16
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @sqlite3GetVarint(i8*, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
