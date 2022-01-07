; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_do_import_card.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_do_import_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }
%struct.arg = type { i8* }
%struct.in_ev = type { i32 }

@do_import_card.p = internal global [10 x i32] zeroinitializer, align 16
@TLS = common dso_local global i32 0, align 4
@print_user_gw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_import_card(%struct.command* %0, i32 %1, %struct.arg* %2, %struct.in_ev* %3) #0 {
  %5 = alloca %struct.command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.arg*, align 8
  %8 = alloca %struct.in_ev*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.command* %0, %struct.command** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.arg* %2, %struct.arg** %7, align 8
  store %struct.in_ev* %3, %struct.in_ev** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.arg*, %struct.arg** %7, align 8
  %20 = getelementptr inbounds %struct.arg, %struct.arg* %19, i64 0
  %21 = getelementptr inbounds %struct.arg, %struct.arg* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @strlen(i8* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %134

27:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %108, %27
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %111

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp sge i32 %38, 48
  br i1 %39, label %40, label %59

40:                                               ; preds = %32
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp sle i32 %46, 57
  br i1 %47, label %48, label %59

48:                                               ; preds = %40
  %49 = load i32, i32* %13, align 4
  %50 = mul nsw i32 %49, 16
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = add nsw i32 %50, %56
  %58 = sub nsw i32 %57, 48
  store i32 %58, i32* %13, align 4
  br label %107

59:                                               ; preds = %40, %32
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp sge i32 %65, 97
  br i1 %66, label %67, label %87

67:                                               ; preds = %59
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp sle i32 %73, 102
  br i1 %74, label %75, label %87

75:                                               ; preds = %67
  %76 = load i32, i32* %13, align 4
  %77 = mul nsw i32 %76, 16
  %78 = load i8*, i8** %9, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = add nsw i32 %77, %83
  %85 = sub nsw i32 %84, 97
  %86 = add nsw i32 %85, 10
  store i32 %86, i32* %13, align 4
  br label %106

87:                                               ; preds = %67, %59
  %88 = load i8*, i8** %9, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 58
  br i1 %94, label %95, label %105

95:                                               ; preds = %87
  %96 = load i32, i32* %12, align 4
  %97 = icmp sge i32 %96, 9
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 0, i32* %14, align 4
  br label %111

99:                                               ; preds = %95
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds [10 x i32], [10 x i32]* @do_import_card.p, i64 0, i64 %103
  store i32 %100, i32* %104, align 4
  store i32 0, i32* %13, align 4
  br label %105

105:                                              ; preds = %99, %87
  br label %106

106:                                              ; preds = %105, %75
  br label %107

107:                                              ; preds = %106, %48
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %28

111:                                              ; preds = %98, %28
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %133

114:                                              ; preds = %111
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds [10 x i32], [10 x i32]* @do_import_card.p, i64 0, i64 %118
  store i32 %115, i32* %119, align 4
  %120 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %121 = icmp ne %struct.in_ev* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %114
  %123 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %124 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %122, %114
  %128 = load i32, i32* @TLS, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* @print_user_gw, align 4
  %131 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %132 = call i32 @tgl_do_import_card(i32 %128, i32 %129, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @do_import_card.p, i64 0, i64 0), i32 %130, %struct.in_ev* %131)
  br label %133

133:                                              ; preds = %127, %111
  br label %134

134:                                              ; preds = %133, %4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @tgl_do_import_card(i32, i32, i32*, i32, %struct.in_ev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
