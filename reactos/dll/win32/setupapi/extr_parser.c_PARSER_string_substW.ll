; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_PARSER_string_substW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_parser.c_PARSER_string_substW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf_file = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@MAX_STRING_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inf_file*, i8*, i8*, i32)* @PARSER_string_substW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PARSER_string_substW(%struct.inf_file* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.inf_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inf_file* %0, %struct.inf_file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @MAX_STRING_LEN, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %18, %4
  %22 = load i8*, i8** %6, align 8
  store i8* %22, i8** %9, align 8
  store i8* %22, i8** %11, align 8
  br label %23

23:                                               ; preds = %137, %21
  %24 = load i8*, i8** %11, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %140

27:                                               ; preds = %23
  %28 = load i8*, i8** %11, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 37
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %137

33:                                               ; preds = %27
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %76

40:                                               ; preds = %33
  %41 = load i8*, i8** %11, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sub i32 %48, 1
  %50 = icmp ugt i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load i32, i32* %8, align 4
  %53 = sub i32 %52, 1
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %51, %40
  %55 = load i8*, i8** %7, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %13, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %12, align 4
  %64 = zext i32 %63 to i64
  %65 = mul i64 %64, 1
  %66 = trunc i64 %65 to i32
  %67 = call i32 @memcpy(i8* %61, i8* %62, i32 %66)
  br label %68

68:                                               ; preds = %57, %54
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %13, align 4
  %71 = add i32 %70, %69
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sub i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load i8*, i8** %11, align 8
  store i8* %75, i8** %9, align 8
  br label %136

76:                                               ; preds = %33
  %77 = load i8*, i8** %11, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = sub nsw i64 %81, 1
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %12, align 4
  %84 = load %struct.inf_file*, %struct.inf_file** %5, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8*, i8** %11, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 92
  %92 = zext i1 %91 to i32
  %93 = call i8* @get_string_subst(%struct.inf_file* %84, i8* %86, i32* %12, i32 %92)
  store i8* %93, i8** %10, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %105, label %96

96:                                               ; preds = %76
  %97 = load i8*, i8** %9, align 8
  store i8* %97, i8** %10, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = add nsw i64 %102, 1
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %96, %76
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %8, align 4
  %108 = sub i32 %107, 1
  %109 = icmp ugt i32 %106, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i32, i32* %8, align 4
  %112 = sub i32 %111, 1
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %110, %105
  %114 = load i8*, i8** %7, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = load i8*, i8** %7, align 8
  %118 = load i32, i32* %13, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i8*, i8** %10, align 8
  %122 = load i32, i32* %12, align 4
  %123 = zext i32 %122 to i64
  %124 = mul i64 %123, 1
  %125 = trunc i64 %124 to i32
  %126 = call i32 @memcpy(i8* %120, i8* %121, i32 %125)
  br label %127

127:                                              ; preds = %116, %113
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %13, align 4
  %130 = add i32 %129, %128
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %8, align 4
  %133 = sub i32 %132, %131
  store i32 %133, i32* %8, align 4
  %134 = load i8*, i8** %11, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  store i8* %135, i8** %9, align 8
  br label %136

136:                                              ; preds = %127, %68
  br label %137

137:                                              ; preds = %136, %32
  %138 = load i8*, i8** %11, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %11, align 8
  br label %23

140:                                              ; preds = %23
  %141 = load i8*, i8** %9, align 8
  %142 = load i8*, i8** %11, align 8
  %143 = icmp ne i8* %141, %142
  br i1 %143, label %144, label %176

144:                                              ; preds = %140
  %145 = load i8*, i8** %11, align 8
  %146 = load i8*, i8** %9, align 8
  %147 = ptrtoint i8* %145 to i64
  %148 = ptrtoint i8* %146 to i64
  %149 = sub i64 %147, %148
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %8, align 4
  %153 = sub i32 %152, 1
  %154 = icmp ugt i32 %151, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %144
  %156 = load i32, i32* %8, align 4
  %157 = sub i32 %156, 1
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %155, %144
  %159 = load i8*, i8** %7, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %172

161:                                              ; preds = %158
  %162 = load i8*, i8** %7, align 8
  %163 = load i32, i32* %13, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load i8*, i8** %9, align 8
  %167 = load i32, i32* %12, align 4
  %168 = zext i32 %167 to i64
  %169 = mul i64 %168, 1
  %170 = trunc i64 %169 to i32
  %171 = call i32 @memcpy(i8* %165, i8* %166, i32 %170)
  br label %172

172:                                              ; preds = %161, %158
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %13, align 4
  %175 = add i32 %174, %173
  store i32 %175, i32* %13, align 4
  br label %176

176:                                              ; preds = %172, %140
  %177 = load i8*, i8** %7, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %187

179:                                              ; preds = %176
  %180 = load i32, i32* %8, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %179
  %183 = load i8*, i8** %7, align 8
  %184 = load i32, i32* %13, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  store i8 0, i8* %186, align 1
  br label %187

187:                                              ; preds = %182, %179, %176
  %188 = load i32, i32* %13, align 4
  ret i32 %188
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @get_string_subst(%struct.inf_file*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
