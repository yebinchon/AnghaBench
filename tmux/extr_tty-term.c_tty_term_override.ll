; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty-term.c_tty_term_override.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty-term.c_tty_term_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_term_code_entry = type { i32, i32 }
%struct.tty_term = type { %struct.tty_code*, i32 }
%struct.tty_code = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%s override: %s@\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s override: %s\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s override: %s=%s\00", align 1
@tty_term_codes = common dso_local global %struct.tty_term_code_entry* null, align 8
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_term*, i8*)* @tty_term_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_term_override(%struct.tty_term* %0, i8* %1) #0 {
  %3 = alloca %struct.tty_term*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tty_term_code_entry*, align 8
  %6 = alloca %struct.tty_code*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.tty_term* %0, %struct.tty_term** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %7, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @tty_term_override_next(i8* %15, i64* %7)
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load i8*, i8** %10, align 8
  %21 = load %struct.tty_term*, %struct.tty_term** %3, align 8
  %22 = getelementptr inbounds %struct.tty_term, %struct.tty_term* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @fnmatch(i8* %20, i32 %23, i32 0)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %2
  br label %192

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %189, %37, %27
  %29 = load i8*, i8** %4, align 8
  %30 = call i8* @tty_term_override_next(i8* %29, i64* %7)
  store i8* %30, i8** %10, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %192

32:                                               ; preds = %28
  %33 = load i8*, i8** %10, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %28

38:                                               ; preds = %32
  store i8* null, i8** %9, align 8
  store i32 0, i32* %14, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 61)
  store i8* %40, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %8, align 8
  store i8 0, i8* %43, align 1
  %45 = load i8*, i8** %8, align 8
  %46 = call i8* @xstrdup(i8* %45)
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @strunvis(i8* %47, i8* %48)
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load i8*, i8** %8, align 8
  %55 = call i8* @xstrdup(i8* %54)
  store i8* %55, i8** %9, align 8
  br label %56

56:                                               ; preds = %51, %42
  br label %77

57:                                               ; preds = %38
  %58 = load i8*, i8** %10, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 64
  br i1 %66, label %67, label %74

67:                                               ; preds = %57
  %68 = load i8*, i8** %10, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %68, i64 %72
  store i8 0, i8* %73, align 1
  store i32 1, i32* %14, align 4
  br label %76

74:                                               ; preds = %57
  %75 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %75, i8** %9, align 8
  br label %76

76:                                               ; preds = %74, %67
  br label %77

77:                                               ; preds = %76, %56
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load %struct.tty_term*, %struct.tty_term** %3, align 8
  %82 = getelementptr inbounds %struct.tty_term, %struct.tty_term* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 (i8*, i32, i8*, ...) @log_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %83, i8* %84)
  br label %105

86:                                               ; preds = %77
  %87 = load i8*, i8** %9, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load %struct.tty_term*, %struct.tty_term** %3, align 8
  %93 = getelementptr inbounds %struct.tty_term, %struct.tty_term* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 (i8*, i32, i8*, ...) @log_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %94, i8* %95)
  br label %104

97:                                               ; preds = %86
  %98 = load %struct.tty_term*, %struct.tty_term** %3, align 8
  %99 = getelementptr inbounds %struct.tty_term, %struct.tty_term* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 (i8*, i32, i8*, ...) @log_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %100, i8* %101, i8* %102)
  br label %104

104:                                              ; preds = %97, %91
  br label %105

105:                                              ; preds = %104, %80
  store i64 0, i64* %12, align 8
  br label %106

106:                                              ; preds = %186, %105
  %107 = load i64, i64* %12, align 8
  %108 = call i64 (...) @tty_term_ncodes()
  %109 = icmp ult i64 %107, %108
  br i1 %109, label %110, label %189

110:                                              ; preds = %106
  %111 = load %struct.tty_term_code_entry*, %struct.tty_term_code_entry** @tty_term_codes, align 8
  %112 = load i64, i64* %12, align 8
  %113 = getelementptr inbounds %struct.tty_term_code_entry, %struct.tty_term_code_entry* %111, i64 %112
  store %struct.tty_term_code_entry* %113, %struct.tty_term_code_entry** %5, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = load %struct.tty_term_code_entry*, %struct.tty_term_code_entry** %5, align 8
  %116 = getelementptr inbounds %struct.tty_term_code_entry, %struct.tty_term_code_entry* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @strcmp(i8* %114, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  br label %186

121:                                              ; preds = %110
  %122 = load %struct.tty_term*, %struct.tty_term** %3, align 8
  %123 = getelementptr inbounds %struct.tty_term, %struct.tty_term* %122, i32 0, i32 0
  %124 = load %struct.tty_code*, %struct.tty_code** %123, align 8
  %125 = load i64, i64* %12, align 8
  %126 = getelementptr inbounds %struct.tty_code, %struct.tty_code* %124, i64 %125
  store %struct.tty_code* %126, %struct.tty_code** %6, align 8
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %121
  %130 = load %struct.tty_code*, %struct.tty_code** %6, align 8
  %131 = getelementptr inbounds %struct.tty_code, %struct.tty_code* %130, i32 0, i32 0
  store i32 130, i32* %131, align 8
  br label %186

132:                                              ; preds = %121
  %133 = load %struct.tty_term_code_entry*, %struct.tty_term_code_entry** %5, align 8
  %134 = getelementptr inbounds %struct.tty_term_code_entry, %struct.tty_term_code_entry* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  switch i32 %135, label %185 [
    i32 130, label %136
    i32 128, label %137
    i32 129, label %159
    i32 131, label %176
  ]

136:                                              ; preds = %132
  br label %185

137:                                              ; preds = %132
  %138 = load %struct.tty_code*, %struct.tty_code** %6, align 8
  %139 = getelementptr inbounds %struct.tty_code, %struct.tty_code* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 128
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load %struct.tty_code*, %struct.tty_code** %6, align 8
  %144 = getelementptr inbounds %struct.tty_code, %struct.tty_code* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @free(i8* %146)
  br label %148

148:                                              ; preds = %142, %137
  %149 = load i8*, i8** %9, align 8
  %150 = call i8* @xstrdup(i8* %149)
  %151 = load %struct.tty_code*, %struct.tty_code** %6, align 8
  %152 = getelementptr inbounds %struct.tty_code, %struct.tty_code* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  store i8* %150, i8** %153, align 8
  %154 = load %struct.tty_term_code_entry*, %struct.tty_term_code_entry** %5, align 8
  %155 = getelementptr inbounds %struct.tty_term_code_entry, %struct.tty_term_code_entry* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.tty_code*, %struct.tty_code** %6, align 8
  %158 = getelementptr inbounds %struct.tty_code, %struct.tty_code* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  br label %185

159:                                              ; preds = %132
  %160 = load i8*, i8** %9, align 8
  %161 = load i32, i32* @INT_MAX, align 4
  %162 = call i32 @strtonum(i8* %160, i32 0, i32 %161, i8** %11)
  store i32 %162, i32* %13, align 4
  %163 = load i8*, i8** %11, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %166

165:                                              ; preds = %159
  br label %185

166:                                              ; preds = %159
  %167 = load i32, i32* %13, align 4
  %168 = load %struct.tty_code*, %struct.tty_code** %6, align 8
  %169 = getelementptr inbounds %struct.tty_code, %struct.tty_code* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 1
  store i32 %167, i32* %170, align 8
  %171 = load %struct.tty_term_code_entry*, %struct.tty_term_code_entry** %5, align 8
  %172 = getelementptr inbounds %struct.tty_term_code_entry, %struct.tty_term_code_entry* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.tty_code*, %struct.tty_code** %6, align 8
  %175 = getelementptr inbounds %struct.tty_code, %struct.tty_code* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  br label %185

176:                                              ; preds = %132
  %177 = load %struct.tty_code*, %struct.tty_code** %6, align 8
  %178 = getelementptr inbounds %struct.tty_code, %struct.tty_code* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 2
  store i32 1, i32* %179, align 4
  %180 = load %struct.tty_term_code_entry*, %struct.tty_term_code_entry** %5, align 8
  %181 = getelementptr inbounds %struct.tty_term_code_entry, %struct.tty_term_code_entry* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.tty_code*, %struct.tty_code** %6, align 8
  %184 = getelementptr inbounds %struct.tty_code, %struct.tty_code* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 8
  br label %185

185:                                              ; preds = %132, %176, %166, %165, %148, %136
  br label %186

186:                                              ; preds = %185, %129, %120
  %187 = load i64, i64* %12, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %12, align 8
  br label %106

189:                                              ; preds = %106
  %190 = load i8*, i8** %9, align 8
  %191 = call i32 @free(i8* %190)
  br label %28

192:                                              ; preds = %26, %28
  ret void
}

declare dso_local i8* @tty_term_override_next(i8*, i64*) #1

declare dso_local i64 @fnmatch(i8*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @strunvis(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @log_debug(i8*, i32, i8*, ...) #1

declare dso_local i64 @tty_term_ncodes(...) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @strtonum(i8*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
