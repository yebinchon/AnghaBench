; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cparse.c_cp_decl_mode.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cparse.c_cp_decl_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32 }

@CTOK_IDENT = common dso_local global i64 0, align 8
@MSIZEP = common dso_local global i32 0, align 4
@VSIZEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*)* @cp_decl_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_decl_mode(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = call i32 @cp_check(%struct.TYPE_7__* %8, i8 signext 40)
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CTOK_IDENT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %112

15:                                               ; preds = %2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i8* @strdata(i32 %18)
  store i8* %19, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 95
  br i1 %24, label %25, label %34

25:                                               ; preds = %15
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 95
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  store i8* %33, i8** %5, align 8
  br label %34

34:                                               ; preds = %31, %25, %15
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 86
  br i1 %38, label %39, label %66

39:                                               ; preds = %34
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %5, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %5, align 8
  %44 = load i8, i8* %42, align 1
  %45 = sext i8 %44 to i32
  %46 = sub nsw i32 %45, 48
  store i32 %46, i32* %7, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp sge i32 %49, 48
  br i1 %50, label %51, label %65

51:                                               ; preds = %39
  %52 = load i8*, i8** %5, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sle i32 %54, 57
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = mul nsw i32 %57, 10
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %5, align 8
  %61 = load i8, i8* %59, align 1
  %62 = sext i8 %61 to i32
  %63 = sub nsw i32 %62, 48
  %64 = add nsw i32 %58, %63
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %56, %51, %39
  br label %66

66:                                               ; preds = %65, %34
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %5, align 8
  %69 = load i8, i8* %67, align 1
  %70 = sext i8 %69 to i32
  switch i32 %70, label %77 [
    i32 81, label %71
    i32 72, label %72
    i32 83, label %73
    i32 68, label %74
    i32 84, label %75
    i32 79, label %76
  ]

71:                                               ; preds = %66
  store i32 1, i32* %6, align 4
  br label %78

72:                                               ; preds = %66
  store i32 2, i32* %6, align 4
  br label %78

73:                                               ; preds = %66
  store i32 4, i32* %6, align 4
  br label %78

74:                                               ; preds = %66
  store i32 8, i32* %6, align 4
  br label %78

75:                                               ; preds = %66
  store i32 16, i32* %6, align 4
  br label %78

76:                                               ; preds = %66
  store i32 32, i32* %6, align 4
  br label %78

77:                                               ; preds = %66
  br label %109

78:                                               ; preds = %76, %75, %74, %73, %72, %71
  %79 = load i8*, i8** %5, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 73
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load i8*, i8** %5, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 70
  br i1 %87, label %88, label %108

88:                                               ; preds = %83, %78
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @MSIZEP, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @CTF_INSERT(i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %88
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @VSIZEP, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %6, align 4
  %104 = mul nsw i32 %102, %103
  %105 = call i32 @lj_fls(i32 %104)
  %106 = call i32 @CTF_INSERT(i32 %100, i32 %101, i32 %105)
  br label %107

107:                                              ; preds = %97, %88
  br label %108

108:                                              ; preds = %107, %83
  br label %109

109:                                              ; preds = %108, %77
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %111 = call i32 @cp_next(%struct.TYPE_7__* %110)
  br label %112

112:                                              ; preds = %109, %2
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %114 = call i32 @cp_check(%struct.TYPE_7__* %113, i8 signext 41)
  ret void
}

declare dso_local i32 @cp_check(%struct.TYPE_7__*, i8 signext) #1

declare dso_local i8* @strdata(i32) #1

declare dso_local i32 @CTF_INSERT(i32, i32, i32) #1

declare dso_local i32 @lj_fls(i32) #1

declare dso_local i32 @cp_next(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
