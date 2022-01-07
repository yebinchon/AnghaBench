; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_opj_mj2_compress.c_give_progression.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_opj_mj2_compress.c_give_progression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LRCP = common dso_local global i32 0, align 4
@RLCP = common dso_local global i32 0, align 4
@RPCL = common dso_local global i32 0, align 4
@PCRL = common dso_local global i32 0, align 4
@CPRL = common dso_local global i32 0, align 4
@PROG_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @give_progression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @give_progression(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 76
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 82
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 2
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 67
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 3
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 80
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @LRCP, align 4
  store i32 %28, i32* %2, align 4
  br label %135

29:                                               ; preds = %21, %15, %9, %1
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 82
  br i1 %34, label %35, label %55

35:                                               ; preds = %29
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 76
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 67
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 3
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 80
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @RLCP, align 4
  store i32 %54, i32* %2, align 4
  br label %135

55:                                               ; preds = %47, %41, %35, %29
  %56 = load i8*, i8** %3, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 82
  br i1 %60, label %61, label %81

61:                                               ; preds = %55
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 80
  br i1 %66, label %67, label %81

67:                                               ; preds = %61
  %68 = load i8*, i8** %3, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 67
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load i8*, i8** %3, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 3
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 76
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @RPCL, align 4
  store i32 %80, i32* %2, align 4
  br label %135

81:                                               ; preds = %73, %67, %61, %55
  %82 = load i8*, i8** %3, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 80
  br i1 %86, label %87, label %107

87:                                               ; preds = %81
  %88 = load i8*, i8** %3, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 67
  br i1 %92, label %93, label %107

93:                                               ; preds = %87
  %94 = load i8*, i8** %3, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 2
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 82
  br i1 %98, label %99, label %107

99:                                               ; preds = %93
  %100 = load i8*, i8** %3, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 3
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 76
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* @PCRL, align 4
  store i32 %106, i32* %2, align 4
  br label %135

107:                                              ; preds = %99, %93, %87, %81
  %108 = load i8*, i8** %3, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 67
  br i1 %112, label %113, label %133

113:                                              ; preds = %107
  %114 = load i8*, i8** %3, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 80
  br i1 %118, label %119, label %133

119:                                              ; preds = %113
  %120 = load i8*, i8** %3, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 2
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 82
  br i1 %124, label %125, label %133

125:                                              ; preds = %119
  %126 = load i8*, i8** %3, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 3
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 76
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  %132 = load i32, i32* @CPRL, align 4
  store i32 %132, i32* %2, align 4
  br label %135

133:                                              ; preds = %125, %119, %113, %107
  %134 = load i32, i32* @PROG_UNKNOWN, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %133, %131, %105, %79, %53, %27
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
