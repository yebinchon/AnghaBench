; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_cgroup-util.c_cg_split_spec.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_cgroup-util.c_cg_split_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cg_split_spec(i8* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @assert(i8* %11)
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 47
  br i1 %16, label %17, label %45

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @path_is_normalized(i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %154

24:                                               ; preds = %17
  %25 = load i8**, i8*** %7, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @strdup(i8* %28)
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %154

35:                                               ; preds = %27
  %36 = load i8*, i8** %8, align 8
  %37 = call i8* @path_simplify(i8* %36, i32 0)
  %38 = load i8**, i8*** %7, align 8
  store i8* %37, i8** %38, align 8
  br label %39

39:                                               ; preds = %35, %24
  %40 = load i8**, i8*** %6, align 8
  %41 = icmp ne i8** %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i8**, i8*** %6, align 8
  store i8* null, i8** %43, align 8
  br label %44

44:                                               ; preds = %42, %39
  store i32 0, i32* %4, align 4
  br label %154

45:                                               ; preds = %3
  %46 = load i8*, i8** %5, align 8
  %47 = call i8* @strchr(i8* %46, i8 signext 58)
  store i8* %47, i8** %10, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %77, label %50

50:                                               ; preds = %45
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @cg_controller_is_valid(i8* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %154

57:                                               ; preds = %50
  %58 = load i8**, i8*** %6, align 8
  %59 = icmp ne i8** %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load i8*, i8** %5, align 8
  %62 = call i8* @strdup(i8* %61)
  store i8* %62, i8** %8, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %154

68:                                               ; preds = %60
  %69 = load i8*, i8** %8, align 8
  %70 = load i8**, i8*** %6, align 8
  store i8* %69, i8** %70, align 8
  br label %71

71:                                               ; preds = %68, %57
  %72 = load i8**, i8*** %7, align 8
  %73 = icmp ne i8** %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i8**, i8*** %7, align 8
  store i8* null, i8** %75, align 8
  br label %76

76:                                               ; preds = %74, %71
  store i32 0, i32* %4, align 4
  br label %154

77:                                               ; preds = %45
  %78 = load i8*, i8** %5, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i32
  %85 = call i8* @strndup(i8* %78, i32 %84)
  store i8* %85, i8** %8, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %77
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %154

91:                                               ; preds = %77
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @cg_controller_is_valid(i8* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %91
  %96 = load i8*, i8** %8, align 8
  %97 = call i32 @free(i8* %96)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %154

100:                                              ; preds = %91
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = call i64 @isempty(i8* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store i8* null, i8** %9, align 8
  br label %135

106:                                              ; preds = %100
  %107 = load i8*, i8** %10, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = call i8* @strdup(i8* %108)
  store i8* %109, i8** %9, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %106
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 @free(i8* %113)
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %154

117:                                              ; preds = %106
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 @path_is_normalized(i8* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load i8*, i8** %9, align 8
  %123 = call i32 @path_is_absolute(i8* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %121, %117
  %126 = load i8*, i8** %8, align 8
  %127 = call i32 @free(i8* %126)
  %128 = load i8*, i8** %9, align 8
  %129 = call i32 @free(i8* %128)
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %4, align 4
  br label %154

132:                                              ; preds = %121
  %133 = load i8*, i8** %9, align 8
  %134 = call i8* @path_simplify(i8* %133, i32 0)
  br label %135

135:                                              ; preds = %132, %105
  %136 = load i8**, i8*** %6, align 8
  %137 = icmp ne i8** %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i8*, i8** %8, align 8
  %140 = load i8**, i8*** %6, align 8
  store i8* %139, i8** %140, align 8
  br label %144

141:                                              ; preds = %135
  %142 = load i8*, i8** %8, align 8
  %143 = call i32 @free(i8* %142)
  br label %144

144:                                              ; preds = %141, %138
  %145 = load i8**, i8*** %7, align 8
  %146 = icmp ne i8** %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i8*, i8** %9, align 8
  %149 = load i8**, i8*** %7, align 8
  store i8* %148, i8** %149, align 8
  br label %153

150:                                              ; preds = %144
  %151 = load i8*, i8** %9, align 8
  %152 = call i32 @free(i8* %151)
  br label %153

153:                                              ; preds = %150, %147
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %153, %125, %112, %95, %88, %76, %65, %54, %44, %32, %21
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @path_is_normalized(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @path_simplify(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @cg_controller_is_valid(i8*) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i32 @path_is_absolute(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
