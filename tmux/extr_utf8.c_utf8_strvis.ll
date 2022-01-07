; ModuleID = '/home/carl/AnghaBench/tmux/extr_utf8.c_utf8_strvis.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_utf8.c_utf8_strvis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utf8_data = type { i64, i32, i32* }

@UTF8_MORE = common dso_local global i32 0, align 4
@UTF8_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf8_strvis(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.utf8_data, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %11, align 8
  br label %18

18:                                               ; preds = %138, %66, %4
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %22, label %141

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = call i32 @utf8_open(%struct.utf8_data* %9, i8 signext %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* @UTF8_MORE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %74

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %40, %28
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @UTF8_MORE, align 4
  %37 = icmp eq i32 %35, %36
  br label %38

38:                                               ; preds = %34, %29
  %39 = phi i1 [ false, %29 ], [ %37, %34 ]
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = load i8*, i8** %6, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i32 @utf8_append(%struct.utf8_data* %9, i8 signext %42)
  store i32 %43, i32* %12, align 4
  br label %29

44:                                               ; preds = %38
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @UTF8_DONE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %44
  store i64 0, i64* %13, align 8
  br label %49

49:                                               ; preds = %63, %48
  %50 = load i64, i64* %13, align 8
  %51 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %9, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %50, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %9, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %13, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %5, align 8
  store i8 %60, i8* %61, align 1
  br label %63

63:                                               ; preds = %54
  %64 = load i64, i64* %13, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %13, align 8
  br label %49

66:                                               ; preds = %49
  br label %18

67:                                               ; preds = %44
  %68 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %9, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = sext i32 %69 to i64
  %72 = sub i64 0, %71
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  store i8* %73, i8** %6, align 8
  br label %74

74:                                               ; preds = %67, %22
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 36
  br i1 %79, label %80, label %110

80:                                               ; preds = %74
  %81 = load i8*, i8** %6, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 -1
  %84 = icmp ult i8* %81, %83
  br i1 %84, label %85, label %110

85:                                               ; preds = %80
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = call i64 @isalpha(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %104, label %92

92:                                               ; preds = %85
  %93 = load i8*, i8** %6, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 95
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 123
  br i1 %103, label %104, label %107

104:                                              ; preds = %98, %92, %85
  %105 = load i8*, i8** %5, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %5, align 8
  store i8 92, i8* %105, align 1
  br label %107

107:                                              ; preds = %104, %98
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %5, align 8
  store i8 36, i8* %108, align 1
  br label %138

110:                                              ; preds = %80, %74
  %111 = load i8*, i8** %6, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 -1
  %114 = icmp ult i8* %111, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %110
  %116 = load i8*, i8** %5, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  %119 = load i8, i8* %118, align 1
  %120 = load i32, i32* %8, align 4
  %121 = load i8*, i8** %6, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = load i8, i8* %122, align 1
  %124 = call i8* @vis(i8* %116, i8 signext %119, i32 %120, i8 signext %123)
  store i8* %124, i8** %5, align 8
  br label %137

125:                                              ; preds = %110
  %126 = load i8*, i8** %6, align 8
  %127 = load i8*, i8** %11, align 8
  %128 = icmp ult i8* %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %125
  %130 = load i8*, i8** %5, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 0
  %133 = load i8, i8* %132, align 1
  %134 = load i32, i32* %8, align 4
  %135 = call i8* @vis(i8* %130, i8 signext %133, i32 %134, i8 signext 0)
  store i8* %135, i8** %5, align 8
  br label %136

136:                                              ; preds = %129, %125
  br label %137

137:                                              ; preds = %136, %115
  br label %138

138:                                              ; preds = %137, %107
  %139 = load i8*, i8** %6, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %6, align 8
  br label %18

141:                                              ; preds = %18
  %142 = load i8*, i8** %5, align 8
  store i8 0, i8* %142, align 1
  %143 = load i8*, i8** %5, align 8
  %144 = load i8*, i8** %10, align 8
  %145 = ptrtoint i8* %143 to i64
  %146 = ptrtoint i8* %144 to i64
  %147 = sub i64 %145, %146
  %148 = trunc i64 %147 to i32
  ret i32 %148
}

declare dso_local i32 @utf8_open(%struct.utf8_data*, i8 signext) #1

declare dso_local i32 @utf8_append(%struct.utf8_data*, i8 signext) #1

declare dso_local i64 @isalpha(i32) #1

declare dso_local i8* @vis(i8*, i8 signext, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
