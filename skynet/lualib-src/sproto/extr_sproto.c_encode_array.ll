; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_encode_array.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_encode_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sproto_arg = type { i32, i32, i32*, i32 }

@SIZEOF_LENGTH = common dso_local global i32 0, align 4
@SPROTO_CB_NIL = common dso_local global i32 0, align 4
@SPROTO_CB_NOARRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32 (%struct.sproto_arg*)*, %struct.sproto_arg*, i32*, i32)* @encode_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_array(i32 (%struct.sproto_arg*)* %0, %struct.sproto_arg* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32 (%struct.sproto_arg*)*, align 8
  %7 = alloca %struct.sproto_arg*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 (%struct.sproto_arg*)* %0, i32 (%struct.sproto_arg*)** %6, align 8
  store %struct.sproto_arg* %1, %struct.sproto_arg** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @SIZEOF_LENGTH, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %156

18:                                               ; preds = %4
  %19 = load i32, i32* @SIZEOF_LENGTH, align 4
  %20 = load i32, i32* %9, align 4
  %21 = sub nsw i32 %20, %19
  store i32 %21, i32* %9, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* @SIZEOF_LENGTH, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32* %25, i32** %10, align 8
  %26 = load %struct.sproto_arg*, %struct.sproto_arg** %7, align 8
  %27 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %87 [
    i32 128, label %29
    i32 129, label %43
  ]

29:                                               ; preds = %18
  %30 = load i32 (%struct.sproto_arg*)*, i32 (%struct.sproto_arg*)** %6, align 8
  %31 = load %struct.sproto_arg*, %struct.sproto_arg** %7, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32* @encode_integer_array(i32 (%struct.sproto_arg*)* %30, %struct.sproto_arg* %31, i32* %32, i32 %33, i32* %12)
  store i32* %34, i32** %10, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 -1, i32* %5, align 4
  br label %156

38:                                               ; preds = %29
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %156

42:                                               ; preds = %38
  br label %142

43:                                               ; preds = %18
  %44 = load %struct.sproto_arg*, %struct.sproto_arg** %7, align 8
  %45 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %71, %43
  store i32 0, i32* %13, align 4
  %47 = load %struct.sproto_arg*, %struct.sproto_arg** %7, align 8
  %48 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %47, i32 0, i32 2
  store i32* %13, i32** %48, align 8
  %49 = load %struct.sproto_arg*, %struct.sproto_arg** %7, align 8
  %50 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %49, i32 0, i32 3
  store i32 4, i32* %50, align 8
  %51 = load i32 (%struct.sproto_arg*)*, i32 (%struct.sproto_arg*)** %6, align 8
  %52 = load %struct.sproto_arg*, %struct.sproto_arg** %7, align 8
  %53 = call i32 %51(%struct.sproto_arg* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %46
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @SPROTO_CB_NIL, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %86

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @SPROTO_CB_NOARRAY, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %156

66:                                               ; preds = %61
  store i32 -1, i32* %5, align 4
  br label %156

67:                                               ; preds = %46
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %68, 1
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 -1, i32* %5, align 4
  br label %156

71:                                               ; preds = %67
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 1, i32 0
  %76 = load i32*, i32** %10, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32* %81, i32** %10, align 8
  %82 = load %struct.sproto_arg*, %struct.sproto_arg** %7, align 8
  %83 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %46

86:                                               ; preds = %60
  br label %142

87:                                               ; preds = %18
  %88 = load %struct.sproto_arg*, %struct.sproto_arg** %7, align 8
  %89 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %124, %87
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @SIZEOF_LENGTH, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 -1, i32* %5, align 4
  br label %156

95:                                               ; preds = %90
  %96 = load i32, i32* @SIZEOF_LENGTH, align 4
  %97 = load i32, i32* %9, align 4
  %98 = sub nsw i32 %97, %96
  store i32 %98, i32* %9, align 4
  %99 = load i32*, i32** %10, align 8
  %100 = load i32, i32* @SIZEOF_LENGTH, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load %struct.sproto_arg*, %struct.sproto_arg** %7, align 8
  %104 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %103, i32 0, i32 2
  store i32* %102, i32** %104, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.sproto_arg*, %struct.sproto_arg** %7, align 8
  %107 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 8
  %108 = load i32 (%struct.sproto_arg*)*, i32 (%struct.sproto_arg*)** %6, align 8
  %109 = load %struct.sproto_arg*, %struct.sproto_arg** %7, align 8
  %110 = call i32 %108(%struct.sproto_arg* %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %95
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @SPROTO_CB_NIL, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %141

118:                                              ; preds = %113
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @SPROTO_CB_NOARRAY, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i32 0, i32* %5, align 4
  br label %156

123:                                              ; preds = %118
  store i32 -1, i32* %5, align 4
  br label %156

124:                                              ; preds = %95
  %125 = load i32*, i32** %10, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @fill_size(i32* %125, i32 %126)
  %128 = load i32, i32* @SIZEOF_LENGTH, align 4
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %128, %129
  %131 = load i32*, i32** %10, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32* %133, i32** %10, align 8
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %9, align 4
  %136 = sub nsw i32 %135, %134
  store i32 %136, i32* %9, align 4
  %137 = load %struct.sproto_arg*, %struct.sproto_arg** %7, align 8
  %138 = getelementptr inbounds %struct.sproto_arg, %struct.sproto_arg* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  br label %90

141:                                              ; preds = %117
  br label %142

142:                                              ; preds = %141, %86, %42
  %143 = load i32*, i32** %10, align 8
  %144 = load i32*, i32** %8, align 8
  %145 = load i32, i32* @SIZEOF_LENGTH, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = ptrtoint i32* %143 to i64
  %149 = ptrtoint i32* %147 to i64
  %150 = sub i64 %148, %149
  %151 = sdiv exact i64 %150, 4
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %11, align 4
  %153 = load i32*, i32** %8, align 8
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @fill_size(i32* %153, i32 %154)
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %142, %123, %122, %94, %70, %66, %65, %41, %37, %17
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i32* @encode_integer_array(i32 (%struct.sproto_arg*)*, %struct.sproto_arg*, i32*, i32, i32*) #1

declare dso_local i32 @fill_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
