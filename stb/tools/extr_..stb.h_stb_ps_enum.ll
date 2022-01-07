; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_ps_enum.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_ps_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8** }
%struct.TYPE_9__ = type { i32, i8** }
%struct.TYPE_7__ = type { i32, i8** }

@STB_TRUE = common dso_local global i32 0, align 4
@STB_BUCKET_SIZE = common dso_local global i32 0, align 4
@STB_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb_ps_enum(i8* %0, i8* %1, i32 (i8*, i8*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i8*, i8*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (i8*, i8*)* %2, i32 (i8*, i8*)** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = trunc i64 %13 to i32
  %15 = and i32 3, %14
  switch i32 %15, label %133 [
    i32 129, label %16
    i32 130, label %26
    i32 131, label %63
    i32 128, label %92
  ]

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @STB_TRUE, align 4
  store i32 %20, i32* %4, align 4
  br label %135

21:                                               ; preds = %16
  %22 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %7, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 %22(i8* %23, i8* %24)
  store i32 %25, i32* %4, align 4
  br label %135

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = call %struct.TYPE_8__* @GetBucket(i8* %27)
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %9, align 8
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %58, %26
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @STB_BUCKET_SIZE, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %61

33:                                               ; preds = %29
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i8**, i8*** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %33
  %43 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %7, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 %43(i8* %50, i8* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %42
  %55 = load i32, i32* @STB_FALSE, align 4
  store i32 %55, i32* %4, align 4
  br label %135

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56, %33
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %29

61:                                               ; preds = %29
  %62 = load i32, i32* @STB_TRUE, align 4
  store i32 %62, i32* %4, align 4
  br label %135

63:                                               ; preds = %3
  %64 = load i8*, i8** %5, align 8
  %65 = call %struct.TYPE_9__* @GetArray(i8* %64)
  store %struct.TYPE_9__* %65, %struct.TYPE_9__** %10, align 8
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %87, %63
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %66
  %73 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %7, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i8**, i8*** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 %73(i8* %80, i8* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %72
  %85 = load i32, i32* @STB_FALSE, align 4
  store i32 %85, i32* %4, align 4
  br label %135

86:                                               ; preds = %72
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %66

90:                                               ; preds = %66
  %91 = load i32, i32* @STB_TRUE, align 4
  store i32 %91, i32* %4, align 4
  br label %135

92:                                               ; preds = %3
  %93 = load i8*, i8** %5, align 8
  %94 = call %struct.TYPE_7__* @GetHash(i8* %93)
  store %struct.TYPE_7__* %94, %struct.TYPE_7__** %11, align 8
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %128, %92
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %131

101:                                              ; preds = %95
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i8**, i8*** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = ptrtoint i8* %108 to i64
  %110 = call i32 @stb_ps_empty(i64 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %127, label %112

112:                                              ; preds = %101
  %113 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %7, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i8**, i8*** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = call i32 %113(i8* %120, i8* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %112
  %125 = load i32, i32* @STB_FALSE, align 4
  store i32 %125, i32* %4, align 4
  br label %135

126:                                              ; preds = %112
  br label %127

127:                                              ; preds = %126, %101
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %95

131:                                              ; preds = %95
  %132 = load i32, i32* @STB_TRUE, align 4
  store i32 %132, i32* %4, align 4
  br label %135

133:                                              ; preds = %3
  %134 = load i32, i32* @STB_TRUE, align 4
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %133, %131, %124, %90, %84, %61, %54, %21, %19
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local %struct.TYPE_8__* @GetBucket(i8*) #1

declare dso_local %struct.TYPE_9__* @GetArray(i8*) #1

declare dso_local %struct.TYPE_7__* @GetHash(i8*) #1

declare dso_local i32 @stb_ps_empty(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
