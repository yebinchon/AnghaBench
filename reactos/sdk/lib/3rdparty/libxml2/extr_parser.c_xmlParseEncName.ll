; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseEncName.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseEncName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CUR = common dso_local global i8 0, align 1
@NEXT = common dso_local global i32 0, align 4
@SHRINK = common dso_local global i32 0, align 4
@GROW = common dso_local global i32 0, align 4
@XML_ERR_ENCODING_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlParseEncName(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* null, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 10, i32* %6, align 4
  %9 = load i8, i8* @CUR, align 1
  store i8 %9, i8* %7, align 1
  %10 = load i8, i8* %7, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp sge i32 %11, 97
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i8, i8* %7, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp sle i32 %15, 122
  br i1 %16, label %25, label %17

17:                                               ; preds = %13, %1
  %18 = load i8, i8* %7, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp sge i32 %19, 65
  br i1 %20, label %21, label %130

21:                                               ; preds = %17
  %22 = load i8, i8* %7, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp sle i32 %23, 90
  br i1 %24, label %25, label %130

25:                                               ; preds = %21, %13
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 1
  %29 = trunc i64 %28 to i32
  %30 = call i64 @xmlMallocAtomic(i32 %29)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %4, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @xmlErrMemory(i32 %35, i32* null)
  store i8* null, i8** %2, align 8
  br label %136

37:                                               ; preds = %25
  %38 = load i8, i8* %7, align 1
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  store i8 %38, i8* %43, align 1
  %44 = load i32, i32* @NEXT, align 4
  %45 = load i8, i8* @CUR, align 1
  store i8 %45, i8* %7, align 1
  br label %46

46:                                               ; preds = %124, %37
  %47 = load i8, i8* %7, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp sge i32 %48, 97
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i8, i8* %7, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp sle i32 %52, 122
  br i1 %53, label %82, label %54

54:                                               ; preds = %50, %46
  %55 = load i8, i8* %7, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp sge i32 %56, 65
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i8, i8* %7, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp sle i32 %60, 90
  br i1 %61, label %82, label %62

62:                                               ; preds = %58, %54
  %63 = load i8, i8* %7, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp sge i32 %64, 48
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i8, i8* %7, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sle i32 %68, 57
  br i1 %69, label %82, label %70

70:                                               ; preds = %66, %62
  %71 = load i8, i8* %7, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 46
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = load i8, i8* %7, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 95
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i8, i8* %7, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 45
  br label %82

82:                                               ; preds = %78, %74, %70, %66, %58, %50
  %83 = phi i1 [ true, %74 ], [ true, %70 ], [ true, %66 ], [ true, %58 ], [ true, %50 ], [ %81, %78 ]
  br i1 %83, label %84, label %125

84:                                               ; preds = %82
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  %87 = load i32, i32* %6, align 4
  %88 = icmp sge i32 %86, %87
  br i1 %88, label %89, label %108

89:                                               ; preds = %84
  %90 = load i32, i32* %6, align 4
  %91 = mul nsw i32 %90, 2
  store i32 %91, i32* %6, align 4
  %92 = load i8*, i8** %4, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 1
  %96 = trunc i64 %95 to i32
  %97 = call i64 @xmlRealloc(i8* %92, i32 %96)
  %98 = inttoptr i64 %97 to i8*
  store i8* %98, i8** %8, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = icmp eq i8* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %89
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @xmlErrMemory(i32 %102, i32* null)
  %104 = load i8*, i8** %4, align 8
  %105 = call i32 @xmlFree(i8* %104)
  store i8* null, i8** %2, align 8
  br label %136

106:                                              ; preds = %89
  %107 = load i8*, i8** %8, align 8
  store i8* %107, i8** %4, align 8
  br label %108

108:                                              ; preds = %106, %84
  %109 = load i8, i8* %7, align 1
  %110 = load i8*, i8** %4, align 8
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  store i8 %109, i8* %114, align 1
  %115 = load i32, i32* @NEXT, align 4
  %116 = load i8, i8* @CUR, align 1
  store i8 %116, i8* %7, align 1
  %117 = load i8, i8* %7, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %108
  %121 = load i32, i32* @SHRINK, align 4
  %122 = load i32, i32* @GROW, align 4
  %123 = load i8, i8* @CUR, align 1
  store i8 %123, i8* %7, align 1
  br label %124

124:                                              ; preds = %120, %108
  br label %46

125:                                              ; preds = %82
  %126 = load i8*, i8** %4, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  store i8 0, i8* %129, align 1
  br label %134

130:                                              ; preds = %21, %17
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* @XML_ERR_ENCODING_NAME, align 4
  %133 = call i32 @xmlFatalErr(i32 %131, i32 %132, i32* null)
  br label %134

134:                                              ; preds = %130, %125
  %135 = load i8*, i8** %4, align 8
  store i8* %135, i8** %2, align 8
  br label %136

136:                                              ; preds = %134, %101, %34
  %137 = load i8*, i8** %2, align 8
  ret i8* %137
}

declare dso_local i64 @xmlMallocAtomic(i32) #1

declare dso_local i32 @xmlErrMemory(i32, i32*) #1

declare dso_local i64 @xmlRealloc(i8*, i32) #1

declare dso_local i32 @xmlFree(i8*) #1

declare dso_local i32 @xmlFatalErr(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
