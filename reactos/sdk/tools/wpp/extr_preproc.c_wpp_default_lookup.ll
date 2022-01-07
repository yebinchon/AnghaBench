; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/wpp/extr_preproc.c_wpp_default_lookup.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/wpp/extr_preproc.c_wpp_default_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i8*, i8**, i32)* @wpp_default_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @wpp_default_lookup(i8* %0, i32 %1, i8* %2, i8** %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = add nsw i64 %20, 1
  %22 = call i8* @pp_xmalloc(i64 %21)
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %179

26:                                               ; preds = %5
  %27 = load i8*, i8** %12, align 8
  store i8* %27, i8** %13, align 8
  %28 = load i8*, i8** %7, align 8
  store i8* %28, i8** %15, align 8
  br label %29

29:                                               ; preds = %56, %26
  %30 = load i8*, i8** %15, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %29
  %34 = load i8*, i8** %15, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 92
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load i8*, i8** %15, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 92
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i8*, i8** %15, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %15, align 8
  br label %47

47:                                               ; preds = %44, %38
  %48 = load i8*, i8** %13, align 8
  store i8 47, i8* %48, align 1
  br label %53

49:                                               ; preds = %33
  %50 = load i8*, i8** %15, align 8
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %13, align 8
  store i8 %51, i8* %52, align 1
  br label %53

53:                                               ; preds = %49, %47
  %54 = load i8*, i8** %13, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %13, align 8
  br label %56

56:                                               ; preds = %53
  %57 = load i8*, i8** %15, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %15, align 8
  br label %29

59:                                               ; preds = %29
  %60 = load i8*, i8** %13, align 8
  store i8 0, i8* %60, align 1
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %124

63:                                               ; preds = %59
  %64 = load i8*, i8** %9, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %124

66:                                               ; preds = %63
  %67 = load i8*, i8** %9, align 8
  %68 = call i8* @strrchr(i8* %67, i8 signext 47)
  store i8* %68, i8** %18, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i8*, i8** %18, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %18, align 8
  br label %75

73:                                               ; preds = %66
  %74 = load i8*, i8** %9, align 8
  store i8* %74, i8** %18, align 8
  br label %75

75:                                               ; preds = %73, %70
  %76 = load i8*, i8** %18, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = load i8*, i8** %12, align 8
  %82 = call i64 @strlen(i8* %81)
  %83 = add nsw i64 %80, %82
  %84 = add nsw i64 %83, 1
  %85 = call i8* @pp_xmalloc(i64 %84)
  store i8* %85, i8** %14, align 8
  %86 = load i8*, i8** %14, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %75
  %89 = load i8*, i8** %12, align 8
  %90 = call i32 @free(i8* %89)
  store i8* null, i8** %6, align 8
  br label %179

91:                                               ; preds = %75
  %92 = load i8*, i8** %14, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = load i8*, i8** %18, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = trunc i64 %98 to i32
  %100 = call i32 @memcpy(i8* %92, i8* %93, i32 %99)
  %101 = load i8*, i8** %14, align 8
  %102 = load i8*, i8** %18, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = getelementptr inbounds i8, i8* %101, i64 %106
  %108 = load i8*, i8** %12, align 8
  %109 = call i32 @strcpy(i8* %107, i8* %108)
  %110 = load i8*, i8** %14, align 8
  %111 = load i32, i32* @O_RDONLY, align 4
  %112 = call i32 @open(i8* %110, i32 %111)
  store i32 %112, i32* %17, align 4
  %113 = load i32, i32* %17, align 4
  %114 = icmp ne i32 %113, -1
  br i1 %114, label %115, label %121

115:                                              ; preds = %91
  %116 = load i32, i32* %17, align 4
  %117 = call i32 @close(i32 %116)
  %118 = load i8*, i8** %12, align 8
  %119 = call i32 @free(i8* %118)
  %120 = load i8*, i8** %14, align 8
  store i8* %120, i8** %6, align 8
  br label %179

121:                                              ; preds = %91
  %122 = load i8*, i8** %14, align 8
  %123 = call i32 @free(i8* %122)
  br label %124

124:                                              ; preds = %121, %63, %59
  store i32 0, i32* %16, align 4
  br label %125

125:                                              ; preds = %173, %124
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %176

129:                                              ; preds = %125
  %130 = load i8**, i8*** %10, align 8
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = call i64 @strlen(i8* %134)
  %136 = load i8*, i8** %12, align 8
  %137 = call i64 @strlen(i8* %136)
  %138 = add nsw i64 %135, %137
  %139 = add nsw i64 %138, 2
  %140 = call i8* @pp_xmalloc(i64 %139)
  store i8* %140, i8** %14, align 8
  %141 = load i8*, i8** %14, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %129
  %144 = load i8*, i8** %12, align 8
  %145 = call i32 @free(i8* %144)
  store i8* null, i8** %6, align 8
  br label %179

146:                                              ; preds = %129
  %147 = load i8*, i8** %14, align 8
  %148 = load i8**, i8*** %10, align 8
  %149 = load i32, i32* %16, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @strcpy(i8* %147, i8* %152)
  %154 = load i8*, i8** %14, align 8
  %155 = call i32 @strcat(i8* %154, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %156 = load i8*, i8** %14, align 8
  %157 = load i8*, i8** %12, align 8
  %158 = call i32 @strcat(i8* %156, i8* %157)
  %159 = load i8*, i8** %14, align 8
  %160 = load i32, i32* @O_RDONLY, align 4
  %161 = call i32 @open(i8* %159, i32 %160)
  store i32 %161, i32* %17, align 4
  %162 = load i32, i32* %17, align 4
  %163 = icmp ne i32 %162, -1
  br i1 %163, label %164, label %170

164:                                              ; preds = %146
  %165 = load i32, i32* %17, align 4
  %166 = call i32 @close(i32 %165)
  %167 = load i8*, i8** %12, align 8
  %168 = call i32 @free(i8* %167)
  %169 = load i8*, i8** %14, align 8
  store i8* %169, i8** %6, align 8
  br label %179

170:                                              ; preds = %146
  %171 = load i8*, i8** %14, align 8
  %172 = call i32 @free(i8* %171)
  br label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %16, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %16, align 4
  br label %125

176:                                              ; preds = %125
  %177 = load i8*, i8** %12, align 8
  %178 = call i32 @free(i8* %177)
  store i8* null, i8** %6, align 8
  br label %179

179:                                              ; preds = %176, %164, %143, %115, %88, %25
  %180 = load i8*, i8** %6, align 8
  ret i8* %180
}

declare dso_local i8* @pp_xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
