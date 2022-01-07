; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/rtl/extr_text.c_TEXT_Ellipsify.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/rtl/extr_text.c_TEXT_Ellipsify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ELLIPSISW = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, i32*, i32, %struct.TYPE_5__*, i8*, i32*, i32*)* @TEXT_Ellipsify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TEXT_Ellipsify(i32 %0, i8* %1, i32 %2, i32* %3, i32 %4, %struct.TYPE_5__* %5, i8* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %23 = load i8*, i8** @ELLIPSISW, align 8
  %24 = call i32 @strlenW(i8* %23)
  store i32 %24, i32* %19, align 4
  %25 = load i32, i32* %19, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ugt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %9
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %19, align 4
  br label %30

30:                                               ; preds = %28, %9
  %31 = load i32*, i32** %13, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %19, align 4
  %35 = sub i32 %33, %34
  %36 = icmp ugt i32 %32, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %19, align 4
  %40 = sub i32 %38, %39
  %41 = load i32*, i32** %13, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %30
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp ugt i32 %44, 0
  br i1 %45, label %46, label %96

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %53 = call i64 @GetTextExtentExPointW(i32 %47, i8* %48, i32 %50, i32 %51, i32* null, i32* null, %struct.TYPE_5__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %96

55:                                               ; preds = %46
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %96

61:                                               ; preds = %55
  store i32 0, i32* %20, align 4
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %22, align 4
  br label %64

64:                                               ; preds = %92, %61
  %65 = load i32, i32* %20, align 4
  %66 = load i32, i32* %22, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %93

68:                                               ; preds = %64
  %69 = load i32, i32* %20, align 4
  %70 = load i32, i32* %22, align 4
  %71 = add i32 %69, %70
  %72 = udiv i32 %71, 2
  store i32 %72, i32* %21, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i8*, i8** %11, align 8
  %75 = load i32, i32* %21, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %78 = call i64 @GetTextExtentExPointW(i32 %73, i8* %74, i32 %75, i32 %76, i32* null, i32* null, %struct.TYPE_5__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %68
  br label %93

81:                                               ; preds = %68
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* %21, align 4
  store i32 %88, i32* %22, align 4
  br label %92

89:                                               ; preds = %81
  %90 = load i32, i32* %21, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %20, align 4
  br label %92

92:                                               ; preds = %89, %87
  br label %64

93:                                               ; preds = %80, %64
  %94 = load i32, i32* %22, align 4
  %95 = load i32*, i32** %13, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %55, %46, %42
  br label %97

97:                                               ; preds = %131, %96
  %98 = load i8*, i8** %11, align 8
  %99 = load i32*, i32** %13, align 8
  %100 = load i32, i32* %99, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  %103 = load i8*, i8** @ELLIPSISW, align 8
  %104 = load i32, i32* %19, align 4
  %105 = zext i32 %104 to i64
  %106 = mul i64 %105, 1
  %107 = trunc i64 %106 to i32
  %108 = call i32 @memcpy(i8* %102, i8* %103, i32 %107)
  %109 = load i32, i32* %10, align 4
  %110 = load i8*, i8** %11, align 8
  %111 = load i32*, i32** %13, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %19, align 4
  %114 = add i32 %112, %113
  %115 = load i32, i32* %14, align 4
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %117 = call i64 @GetTextExtentExPointW(i32 %109, i8* %110, i32 %114, i32 %115, i32* null, i32* null, %struct.TYPE_5__* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %97
  br label %135

120:                                              ; preds = %97
  %121 = load i32*, i32** %13, align 8
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %14, align 4
  %129 = icmp sle i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %124, %120
  br label %135

131:                                              ; preds = %124
  %132 = load i32*, i32** %13, align 8
  %133 = load i32, i32* %132, align 4
  %134 = add i32 %133, -1
  store i32 %134, i32* %132, align 4
  br label %97

135:                                              ; preds = %130, %119
  %136 = load i32, i32* %19, align 4
  %137 = load i32*, i32** %18, align 8
  store i32 %136, i32* %137, align 4
  %138 = load i32*, i32** %13, align 8
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** %17, align 8
  store i32 %139, i32* %140, align 4
  %141 = load i32, i32* %19, align 4
  %142 = load i32*, i32** %13, align 8
  %143 = load i32, i32* %142, align 4
  %144 = add i32 %143, %141
  store i32 %144, i32* %142, align 4
  %145 = load i8*, i8** %16, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %161

147:                                              ; preds = %135
  %148 = load i8*, i8** %16, align 8
  %149 = load i8*, i8** %11, align 8
  %150 = load i32*, i32** %13, align 8
  %151 = load i32, i32* %150, align 4
  %152 = zext i32 %151 to i64
  %153 = mul i64 %152, 1
  %154 = trunc i64 %153 to i32
  %155 = call i32 @memcpy(i8* %148, i8* %149, i32 %154)
  %156 = load i8*, i8** %16, align 8
  %157 = load i32*, i32** %13, align 8
  %158 = load i32, i32* %157, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %156, i64 %159
  store i8 0, i8* %160, align 1
  br label %161

161:                                              ; preds = %147, %135
  ret void
}

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i64 @GetTextExtentExPointW(i32, i8*, i32, i32, i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
