; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_rcmd.c_BufferGets.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_rcmd.c_BufferGets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BufferGets(i8* %0, i64 %1, i32 %2, i8* %3, i8** %4, i8** %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8** %4, i8*** %13, align 8
  store i8** %5, i8*** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %16, align 4
  %23 = load i8*, i8** %9, align 8
  store i8* %23, i8** %18, align 8
  %24 = load i8*, i8** %18, align 8
  %25 = load i64, i64* %10, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = getelementptr inbounds i8, i8* %26, i64 -1
  store i8* %27, i8** %19, align 8
  %28 = load i8**, i8*** %13, align 8
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %17, align 8
  br label %30

30:                                               ; preds = %95, %7
  %31 = load i8*, i8** %18, align 8
  %32 = load i8*, i8** %19, align 8
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %34, label %96

34:                                               ; preds = %30
  %35 = load i8*, i8** %17, align 8
  %36 = load i8**, i8*** %14, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = icmp uge i8* %35, %37
  br i1 %38, label %39, label %73

39:                                               ; preds = %34
  %40 = load i32, i32* %11, align 4
  %41 = load i8*, i8** %12, align 8
  %42 = load i64, i64* %15, align 8
  %43 = call i64 @read(i32 %40, i8* %41, i64 %42)
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %21, align 4
  %45 = load i32, i32* %21, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 1, i32* %22, align 4
  br label %97

48:                                               ; preds = %39
  %49 = load i32, i32* %21, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 -1, i32* %16, align 4
  br label %97

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %52
  %54 = load i8*, i8** %12, align 8
  %55 = load i8**, i8*** %13, align 8
  store i8* %54, i8** %55, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load i32, i32* %21, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8**, i8*** %14, align 8
  store i8* %59, i8** %60, align 8
  %61 = load i8**, i8*** %13, align 8
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %17, align 8
  %63 = load i32, i32* %21, align 4
  %64 = load i64, i64* %15, align 8
  %65 = trunc i64 %64 to i32
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %53
  %68 = load i8*, i8** %17, align 8
  %69 = load i32, i32* %21, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 0, i8* %71, align 1
  br label %72

72:                                               ; preds = %67, %53
  br label %73

73:                                               ; preds = %72, %34
  %74 = load i8*, i8** %17, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 13
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i8*, i8** %17, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %17, align 8
  br label %95

81:                                               ; preds = %73
  %82 = load i8*, i8** %17, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 10
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i8*, i8** %17, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %17, align 8
  br label %97

89:                                               ; preds = %81
  %90 = load i8*, i8** %17, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %17, align 8
  %92 = load i8, i8* %90, align 1
  %93 = load i8*, i8** %18, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %18, align 8
  store i8 %92, i8* %93, align 1
  br label %95

95:                                               ; preds = %89, %78
  br label %30

96:                                               ; preds = %30
  br label %97

97:                                               ; preds = %96, %86, %51, %47
  %98 = load i8*, i8** %17, align 8
  %99 = load i8**, i8*** %13, align 8
  store i8* %98, i8** %99, align 8
  %100 = load i8*, i8** %18, align 8
  store i8 0, i8* %100, align 1
  %101 = load i8*, i8** %18, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = ptrtoint i8* %101 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %20, align 4
  %107 = load i32, i32* %16, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %97
  %110 = load i32, i32* %16, align 4
  store i32 %110, i32* %8, align 4
  br label %120

111:                                              ; preds = %97
  %112 = load i32, i32* %20, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i32, i32* %22, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 -1, i32* %8, align 4
  br label %120

118:                                              ; preds = %114, %111
  %119 = load i32, i32* %20, align 4
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %118, %117, %109
  %121 = load i32, i32* %8, align 4
  ret i32 %121
}

declare dso_local i64 @read(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
