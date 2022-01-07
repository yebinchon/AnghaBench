; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_lex.c_lex_longstring.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_lex.c_lex_longstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }

@TK_eof = common dso_local global i32 0, align 4
@LJ_ERR_XLSTR = common dso_local global i32 0, align 4
@LJ_ERR_XLCOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*, i32)* @lex_longstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lex_longstring(%struct.TYPE_10__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = call i32 @lex_savenext(%struct.TYPE_10__* %8)
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = call i64 @lex_iseol(%struct.TYPE_10__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = call i32 @lex_newline(%struct.TYPE_10__* %14)
  br label %16

16:                                               ; preds = %13, %3
  br label %17

17:                                               ; preds = %57, %16
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %54 [
    i32 128, label %21
    i32 93, label %33
    i32 10, label %42
    i32 13, label %42
  ]

21:                                               ; preds = %17
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = load i32, i32* @TK_eof, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @LJ_ERR_XLSTR, align 4
  br label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @LJ_ERR_XLCOM, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = call i32 @lj_lex_error(%struct.TYPE_10__* %22, i32 %23, i32 %31)
  br label %57

33:                                               ; preds = %17
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = call i32 @lex_skipeq(%struct.TYPE_10__* %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = call i32 @lex_savenext(%struct.TYPE_10__* %39)
  br label %58

41:                                               ; preds = %33
  br label %57

42:                                               ; preds = %17, %17
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = call i32 @lex_save(%struct.TYPE_10__* %43, i8 signext 10)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = call i32 @lex_newline(%struct.TYPE_10__* %45)
  %47 = load i32*, i32** %5, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %42
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = call i32 @lj_buf_reset(i32* %51)
  br label %53

53:                                               ; preds = %49, %42
  br label %57

54:                                               ; preds = %17
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = call i32 @lex_savenext(%struct.TYPE_10__* %55)
  br label %57

57:                                               ; preds = %54, %53, %41, %30
  br label %17

58:                                               ; preds = %38
  %59 = load i32*, i32** %5, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %84

61:                                               ; preds = %58
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = call i32 @sbufB(i32* %64)
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 2, %66
  %68 = add nsw i32 %65, %67
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = call i64 @sbuflen(i32* %70)
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 2, %72
  %74 = mul nsw i32 2, %73
  %75 = sext i32 %74 to i64
  %76 = sub nsw i64 %71, %75
  %77 = call i32* @lj_parse_keepstr(%struct.TYPE_10__* %62, i32 %68, i64 %76)
  store i32* %77, i32** %7, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @setstrV(i32 %80, i32* %81, i32* %82)
  br label %84

84:                                               ; preds = %61, %58
  ret void
}

declare dso_local i32 @lex_savenext(%struct.TYPE_10__*) #1

declare dso_local i64 @lex_iseol(%struct.TYPE_10__*) #1

declare dso_local i32 @lex_newline(%struct.TYPE_10__*) #1

declare dso_local i32 @lj_lex_error(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @lex_skipeq(%struct.TYPE_10__*) #1

declare dso_local i32 @lex_save(%struct.TYPE_10__*, i8 signext) #1

declare dso_local i32 @lj_buf_reset(i32*) #1

declare dso_local i32* @lj_parse_keepstr(%struct.TYPE_10__*, i32, i64) #1

declare dso_local i32 @sbufB(i32*) #1

declare dso_local i64 @sbuflen(i32*) #1

declare dso_local i32 @setstrV(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
