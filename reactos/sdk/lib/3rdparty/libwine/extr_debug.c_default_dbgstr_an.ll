; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwine/extr_debug.c_default_dbgstr_an.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwine/extr_debug.c_default_dbgstr_an.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* (i32)*, i32 (i8*, i32)* }

@default_dbgstr_an.hex = internal constant [16 x i8] c"0123456789abcdef", align 16
@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@funcs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"#%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @default_dbgstr_an to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @default_dbgstr_an(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = ptrtoint i8* %10 to i32
  %12 = ashr i32 %11, 16
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %153

18:                                               ; preds = %14
  %19 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @funcs, i32 0, i32 0), align 8
  %20 = call i8* %19(i32 6)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @LOWORD(i8* %22)
  %24 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i8*, i8** %7, align 8
  store i8* %25, i8** %3, align 8
  br label %153

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @strlen(i8* %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, i32* %5, align 4
  %38 = mul nsw i32 %37, 4
  %39 = call i32 @min(i32 300, i32 %38)
  %40 = add nsw i32 10, %39
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %8, align 8
  %42 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @funcs, i32 0, i32 0), align 8
  %43 = load i64, i64* %8, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i8* %42(i32 %44)
  store i8* %45, i8** %7, align 8
  store i8* %45, i8** %6, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %6, align 8
  store i8 34, i8* %46, align 1
  br label %48

48:                                               ; preds = %127, %36
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %5, align 4
  %51 = icmp sgt i32 %49, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = getelementptr inbounds i8, i8* %56, i64 -9
  %58 = icmp ule i8* %53, %57
  br label %59

59:                                               ; preds = %52, %48
  %60 = phi i1 [ false, %48 ], [ %58, %52 ]
  br i1 %60, label %61, label %128

61:                                               ; preds = %59
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %4, align 8
  %64 = load i8, i8* %62, align 1
  store i8 %64, i8* %9, align 1
  %65 = load i8, i8* %9, align 1
  %66 = zext i8 %65 to i32
  switch i32 %66, label %92 [
    i32 10, label %67
    i32 13, label %72
    i32 9, label %77
    i32 34, label %82
    i32 92, label %87
  ]

67:                                               ; preds = %61
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %6, align 8
  store i8 92, i8* %68, align 1
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %6, align 8
  store i8 110, i8* %70, align 1
  br label %127

72:                                               ; preds = %61
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %6, align 8
  store i8 92, i8* %73, align 1
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %6, align 8
  store i8 114, i8* %75, align 1
  br label %127

77:                                               ; preds = %61
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %6, align 8
  store i8 92, i8* %78, align 1
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %6, align 8
  store i8 116, i8* %80, align 1
  br label %127

82:                                               ; preds = %61
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %6, align 8
  store i8 92, i8* %83, align 1
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %6, align 8
  store i8 34, i8* %85, align 1
  br label %127

87:                                               ; preds = %61
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %6, align 8
  store i8 92, i8* %88, align 1
  %90 = load i8*, i8** %6, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %6, align 8
  store i8 92, i8* %90, align 1
  br label %127

92:                                               ; preds = %61
  %93 = load i8, i8* %9, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp sge i32 %94, 32
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = load i8, i8* %9, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp sle i32 %98, 126
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i8, i8* %9, align 1
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %6, align 8
  store i8 %101, i8* %102, align 1
  br label %126

104:                                              ; preds = %96, %92
  %105 = load i8*, i8** %6, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %6, align 8
  store i8 92, i8* %105, align 1
  %107 = load i8*, i8** %6, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %6, align 8
  store i8 120, i8* %107, align 1
  %109 = load i8, i8* %9, align 1
  %110 = zext i8 %109 to i32
  %111 = ashr i32 %110, 4
  %112 = and i32 %111, 15
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [16 x i8], [16 x i8]* @default_dbgstr_an.hex, i64 0, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = load i8*, i8** %6, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %6, align 8
  store i8 %115, i8* %116, align 1
  %118 = load i8, i8* %9, align 1
  %119 = zext i8 %118 to i32
  %120 = and i32 %119, 15
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [16 x i8], [16 x i8]* @default_dbgstr_an.hex, i64 0, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = load i8*, i8** %6, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %6, align 8
  store i8 %123, i8* %124, align 1
  br label %126

126:                                              ; preds = %104, %100
  br label %127

127:                                              ; preds = %126, %87, %82, %77, %72, %67
  br label %48

128:                                              ; preds = %59
  %129 = load i8*, i8** %6, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %6, align 8
  store i8 34, i8* %129, align 1
  %131 = load i32, i32* %5, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %128
  %134 = load i8*, i8** %6, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %6, align 8
  store i8 46, i8* %134, align 1
  %136 = load i8*, i8** %6, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %6, align 8
  store i8 46, i8* %136, align 1
  %138 = load i8*, i8** %6, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %6, align 8
  store i8 46, i8* %138, align 1
  br label %140

140:                                              ; preds = %133, %128
  %141 = load i8*, i8** %6, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %6, align 8
  store i8 0, i8* %141, align 1
  %143 = load i32 (i8*, i32)*, i32 (i8*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @funcs, i32 0, i32 1), align 8
  %144 = load i8*, i8** %7, align 8
  %145 = load i8*, i8** %6, align 8
  %146 = load i8*, i8** %7, align 8
  %147 = ptrtoint i8* %145 to i64
  %148 = ptrtoint i8* %146 to i64
  %149 = sub i64 %147, %148
  %150 = trunc i64 %149 to i32
  %151 = call i32 %143(i8* %144, i32 %150)
  %152 = load i8*, i8** %7, align 8
  store i8* %152, i8** %3, align 8
  br label %153

153:                                              ; preds = %140, %18, %17
  %154 = load i8*, i8** %3, align 8
  ret i8* %154
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @LOWORD(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
