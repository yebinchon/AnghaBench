; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/Strn/extr_strtokc.c_strntokc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/Strn/extr_strtokc.c_strntokc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strntokc(i8* %0, i64 %1, i8* %2, i8* %3, i8** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8** %4, i8*** %10, align 8
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %17, align 8
  %20 = load i8*, i8** %17, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = getelementptr inbounds i8, i8* %22, i64 -1
  store i8* %23, i8** %18, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i8**, i8*** %10, align 8
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %15, align 8
  br label %31

29:                                               ; preds = %5
  %30 = load i8*, i8** %8, align 8
  store i8* %30, i8** %15, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i8*, i8** %15, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** %9, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34, %31
  %38 = load i8**, i8*** %10, align 8
  store i8* null, i8** %38, align 8
  br label %124

39:                                               ; preds = %34
  %40 = load i8*, i8** %15, align 8
  store i8* %40, i8** %11, align 8
  br label %41

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %77, %41
  %43 = load i8*, i8** %11, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %11, align 8
  %45 = load i8, i8* %43, align 1
  store i8 %45, i8* %13, align 1
  %46 = load i8, i8* %13, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i8**, i8*** %10, align 8
  store i8* null, i8** %50, align 8
  br label %124

51:                                               ; preds = %42
  %52 = load i8*, i8** %9, align 8
  store i8* %52, i8** %12, align 8
  br label %53

53:                                               ; preds = %78, %51
  %54 = load i8*, i8** %12, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %12, align 8
  %56 = load i8, i8* %54, align 1
  store i8 %56, i8* %14, align 1
  %57 = load i8, i8* %14, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %53
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 -1
  store i8* %62, i8** %15, align 8
  %63 = load i8*, i8** %17, align 8
  %64 = load i8*, i8** %18, align 8
  %65 = icmp ult i8* %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i8, i8* %13, align 1
  %68 = load i8*, i8** %17, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %17, align 8
  store i8 %67, i8* %68, align 1
  br label %70

70:                                               ; preds = %66, %60
  br label %79

71:                                               ; preds = %53
  %72 = load i8, i8* %14, align 1
  %73 = sext i8 %72 to i32
  %74 = load i8, i8* %13, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %42

78:                                               ; preds = %71
  br label %53

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %120, %79
  %81 = load i8*, i8** %11, align 8
  %82 = load i8, i8* %81, align 1
  store i8 %82, i8* %13, align 1
  %83 = load i8, i8* %13, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i8*, i8** %11, align 8
  %88 = load i8**, i8*** %10, align 8
  store i8* %87, i8** %88, align 8
  br label %123

89:                                               ; preds = %80
  %90 = load i8*, i8** %9, align 8
  store i8* %90, i8** %12, align 8
  br label %91

91:                                               ; preds = %110, %89
  %92 = load i8*, i8** %12, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %12, align 8
  %94 = load i8, i8* %92, align 1
  store i8 %94, i8* %14, align 1
  %95 = load i8, i8* %14, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %111

99:                                               ; preds = %91
  %100 = load i8, i8* %14, align 1
  %101 = sext i8 %100 to i32
  %102 = load i8, i8* %13, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load i8*, i8** %11, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %11, align 8
  store i8 0, i8* %106, align 1
  %108 = load i8*, i8** %11, align 8
  %109 = load i8**, i8*** %10, align 8
  store i8* %108, i8** %109, align 8
  br label %124

110:                                              ; preds = %99
  br label %91

111:                                              ; preds = %98
  %112 = load i8*, i8** %17, align 8
  %113 = load i8*, i8** %18, align 8
  %114 = icmp ult i8* %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i8, i8* %13, align 1
  %117 = load i8*, i8** %17, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %17, align 8
  store i8 %116, i8* %117, align 1
  br label %119

119:                                              ; preds = %115, %111
  br label %120

120:                                              ; preds = %119
  %121 = load i8*, i8** %11, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %11, align 8
  br label %80

123:                                              ; preds = %86
  br label %124

124:                                              ; preds = %123, %105, %49, %37
  %125 = load i8*, i8** %17, align 8
  store i8 0, i8* %125, align 1
  %126 = load i8*, i8** %17, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = ptrtoint i8* %126 to i64
  %129 = ptrtoint i8* %127 to i64
  %130 = sub i64 %128, %129
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %16, align 4
  %132 = load i32, i32* %16, align 4
  ret i32 %132
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
