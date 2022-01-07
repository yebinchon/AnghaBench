; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_environ.c_test__wenviron.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_environ.c_test__wenviron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test__wenviron.cat_eq_dogW = internal constant [8 x i8] c"cat=dog\00", align 1
@test__wenviron.cat_eqW = internal constant [5 x i8] c"cat=\00", align 1
@p_wenviron = common dso_local global i8*** null, align 8
@.str = private unnamed_addr constant [50 x i8] c"Expected the pointer to _wenviron to be non-NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Expected _wenviron to be NULL, got %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Pointer to _wenviron is not valid\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Expected _wenviron pointers to be NULL\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"__p__wenviron() is not available\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"_get_wenviron() is not available\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"Expected initial environment block pointer to be non-NULL\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Initial environment block pointer is not valid\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"cat=dog\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"failed setting cat=dog\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"cat=\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"failed deleting cat\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Expected _wenviron to be non-NULL\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"Expected _wenviron pointers to be identical\0A\00", align 1
@.str.14 = private unnamed_addr constant [59 x i8] c"Expected environment block pointer element to be non-NULL\0A\00", align 1
@.str.15 = private unnamed_addr constant [79 x i8] c"Expected _wenviron and environment block pointer strings (%s vs. %s) to match\0A\00", align 1
@.str.16 = private unnamed_addr constant [63 x i8] c"Expected environment block pointer element to be NULL, got %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__wenviron to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__wenviron() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  store i8** null, i8*** %3, align 8
  store i8** null, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load i8***, i8**** @p_wenviron, align 8
  %11 = icmp ne i8*** %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %14 = load i8***, i8**** @p_wenviron, align 8
  %15 = icmp ne i8*** %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %0
  %17 = load i8***, i8**** @p_wenviron, align 8
  %18 = load i8**, i8*** %17, align 8
  %19 = icmp eq i8** %18, null
  %20 = zext i1 %19 to i32
  %21 = load i8***, i8**** @p_wenviron, align 8
  %22 = load i8**, i8*** %21, align 8
  %23 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8** %22)
  br label %26

24:                                               ; preds = %0
  %25 = call i32 @win_skip(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %188

26:                                               ; preds = %16
  br i1 true, label %27, label %33

27:                                               ; preds = %26
  %28 = call i8*** (...) @p__p__wenviron()
  %29 = load i8**, i8*** %28, align 8
  %30 = icmp eq i8** %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %35

33:                                               ; preds = %26
  %34 = call i32 @skip(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %27
  br i1 true, label %36, label %42

36:                                               ; preds = %35
  %37 = call i32 @p_get_wenviron(i8*** %8)
  %38 = load i8**, i8*** %8, align 8
  %39 = icmp eq i8** %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %44

42:                                               ; preds = %35
  %43 = call i32 @win_skip(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %36
  %45 = call i32 @__getmainargs(i32* %1, i8*** %2, i8*** %3, i32 0, i32* %7)
  %46 = load i8***, i8**** @p_wenviron, align 8
  %47 = load i8**, i8*** %46, align 8
  %48 = icmp eq i8** %47, null
  %49 = zext i1 %48 to i32
  %50 = load i8***, i8**** @p_wenviron, align 8
  %51 = load i8**, i8*** %50, align 8
  %52 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8** %51)
  %53 = load i8**, i8*** %3, align 8
  %54 = icmp ne i8** %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  %57 = load i8**, i8*** %3, align 8
  %58 = icmp ne i8** %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %44
  %60 = call i32 @skip(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %188

61:                                               ; preds = %44
  %62 = call i64 @_putenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %66 = load i8***, i8**** @p_wenviron, align 8
  %67 = load i8**, i8*** %66, align 8
  %68 = icmp eq i8** %67, null
  %69 = zext i1 %68 to i32
  %70 = load i8***, i8**** @p_wenviron, align 8
  %71 = load i8**, i8*** %70, align 8
  %72 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8** %71)
  %73 = call i64 @_putenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %77 = call i64 @_wputenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test__wenviron.cat_eq_dogW, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %81 = load i8***, i8**** @p_wenviron, align 8
  %82 = load i8**, i8*** %81, align 8
  %83 = icmp ne i8** %82, null
  %84 = zext i1 %83 to i32
  %85 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %86 = call i64 @_wputenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test__wenviron.cat_eqW, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %90 = call i32 @__wgetmainargs(i32* %1, i8*** %4, i8*** %5, i32 0, i32* %7)
  %91 = load i8***, i8**** @p_wenviron, align 8
  %92 = load i8**, i8*** %91, align 8
  %93 = icmp ne i8** %92, null
  %94 = zext i1 %93 to i32
  %95 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %96 = load i8**, i8*** %5, align 8
  %97 = icmp ne i8** %96, null
  %98 = zext i1 %97 to i32
  %99 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  %100 = load i8**, i8*** %5, align 8
  %101 = icmp ne i8** %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %61
  %103 = call i32 @skip(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %188

104:                                              ; preds = %61
  br i1 true, label %105, label %113

105:                                              ; preds = %104
  %106 = call i8*** (...) @p__p__wenviron()
  %107 = load i8**, i8*** %106, align 8
  %108 = load i8***, i8**** @p_wenviron, align 8
  %109 = load i8**, i8*** %108, align 8
  %110 = icmp eq i8** %107, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0))
  br label %113

113:                                              ; preds = %105, %104
  br i1 true, label %114, label %122

114:                                              ; preds = %113
  %115 = call i32 @p_get_wenviron(i8*** %9)
  %116 = load i8**, i8*** %9, align 8
  %117 = load i8***, i8**** @p_wenviron, align 8
  %118 = load i8**, i8*** %117, align 8
  %119 = icmp eq i8** %116, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0))
  br label %122

122:                                              ; preds = %114, %113
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %185, %122
  %124 = load i8***, i8**** @p_wenviron, align 8
  %125 = load i8**, i8*** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %169

131:                                              ; preds = %123
  %132 = load i8**, i8*** %5, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = icmp ne i8* %136, null
  %138 = zext i1 %137 to i32
  %139 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.14, i64 0, i64 0))
  %140 = load i8***, i8**** @p_wenviron, align 8
  %141 = load i8**, i8*** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = load i8**, i8*** %5, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @winetest_strcmpW(i8* %145, i8* %150)
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = load i8***, i8**** @p_wenviron, align 8
  %156 = load i8**, i8*** %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @wine_dbgstr_w(i8* %160)
  %162 = load i8**, i8*** %5, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %162, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @wine_dbgstr_w(i8* %166)
  %168 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.15, i64 0, i64 0), i32 %161, i32 %167)
  br label %184

169:                                              ; preds = %123
  %170 = load i8**, i8*** %5, align 8
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8*, i8** %170, i64 %172
  %174 = load i8*, i8** %173, align 8
  %175 = icmp ne i8* %174, null
  %176 = xor i1 %175, true
  %177 = zext i1 %176 to i32
  %178 = load i8**, i8*** %5, align 8
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %178, i64 %180
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 (i32, i8*, ...) @ok(i32 %177, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.16, i64 0, i64 0), i8* %182)
  br label %188

184:                                              ; preds = %131
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %6, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %6, align 4
  br label %123

188:                                              ; preds = %24, %59, %102, %169
  ret void
}

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i8*** @p__p__wenviron(...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @p_get_wenviron(i8***) #1

declare dso_local i32 @__getmainargs(i32*, i8***, i8***, i32, i32*) #1

declare dso_local i64 @_putenv(i8*) #1

declare dso_local i64 @_wputenv(i8*) #1

declare dso_local i32 @__wgetmainargs(i32*, i8***, i8***, i32, i32*) #1

declare dso_local i32 @winetest_strcmpW(i8*, i8*) #1

declare dso_local i32 @wine_dbgstr_w(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
