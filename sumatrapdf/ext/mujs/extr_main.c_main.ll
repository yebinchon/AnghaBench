; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@JS_STRICT = common dso_local global i32 0, align 4
@jsB_gc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"gc\00", align 1
@jsB_load = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@jsB_compile = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"compile\00", align 1
@jsB_print = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@jsB_write = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@jsB_read = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@jsB_readline = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"readline\00", align 1
@jsB_repr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"repr\00", align 1
@jsB_quit = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@require_js = common dso_local global i8* null, align 8
@stacktrace_js = common dso_local global i8* null, align 8
@xoptind = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"scriptArgs\00", align 1
@rl_insert = common dso_local global i32 0, align 4
@PS1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %24, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @xgetopt(i32 %14, i8** %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %12, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load i32, i32* %12, align 4
  switch i32 %19, label %20 [
    i32 105, label %22
    i32 115, label %23
  ]

20:                                               ; preds = %18
  %21 = call i32 (...) @usage()
  br label %24

22:                                               ; preds = %18
  store i32 1, i32* %10, align 4
  br label %24

23:                                               ; preds = %18
  store i32 1, i32* %9, align 4
  br label %24

24:                                               ; preds = %23, %22, %20
  br label %13

25:                                               ; preds = %13
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @JS_STRICT, align 4
  br label %31

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %33 = call i32* @js_newstate(i32* null, i32* null, i32 %32)
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* @jsB_gc, align 4
  %36 = call i32 @js_newcfunction(i32* %34, i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @js_setglobal(i32* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @jsB_load, align 4
  %41 = call i32 @js_newcfunction(i32* %39, i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @js_setglobal(i32* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* @jsB_compile, align 4
  %46 = call i32 @js_newcfunction(i32* %44, i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @js_setglobal(i32* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* @jsB_print, align 4
  %51 = call i32 @js_newcfunction(i32* %49, i32 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @js_setglobal(i32* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* @jsB_write, align 4
  %56 = call i32 @js_newcfunction(i32* %54, i32 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @js_setglobal(i32* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* @jsB_read, align 4
  %61 = call i32 @js_newcfunction(i32* %59, i32 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @js_setglobal(i32* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* @jsB_readline, align 4
  %66 = call i32 @js_newcfunction(i32* %64, i32 %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @js_setglobal(i32* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* @jsB_repr, align 4
  %71 = call i32 @js_newcfunction(i32* %69, i32 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @js_setglobal(i32* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* @jsB_quit, align 4
  %76 = call i32 @js_newcfunction(i32* %74, i32 %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 1)
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @js_setglobal(i32* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %79 = load i32*, i32** %7, align 8
  %80 = load i8*, i8** @require_js, align 8
  %81 = call i32 @js_dostring(i32* %79, i8* %80)
  %82 = load i32*, i32** %7, align 8
  %83 = load i8*, i8** @stacktrace_js, align 8
  %84 = call i32 @js_dostring(i32* %82, i8* %83)
  %85 = load i32, i32* @xoptind, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %31
  store i32 1, i32* %10, align 4
  br label %124

89:                                               ; preds = %31
  %90 = load i32, i32* @xoptind, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* @xoptind, align 4
  store i32 %90, i32* %12, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @js_newarray(i32* %92)
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %98, %89
  %95 = load i32, i32* @xoptind, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %94
  %99 = load i32*, i32** %7, align 8
  %100 = load i8**, i8*** %5, align 8
  %101 = load i32, i32* @xoptind, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* @xoptind, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8*, i8** %100, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @js_pushstring(i32* %99, i8* %105)
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  %110 = call i32 @js_setindex(i32* %107, i32 -2, i32 %108)
  br label %94

111:                                              ; preds = %94
  %112 = load i32*, i32** %7, align 8
  %113 = call i32 @js_setglobal(i32* %112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %114 = load i32*, i32** %7, align 8
  %115 = load i8**, i8*** %5, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @js_dofile(i32* %114, i8* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %111
  store i32 1, i32* %8, align 4
  br label %123

123:                                              ; preds = %122, %111
  br label %124

124:                                              ; preds = %123, %88
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %170

127:                                              ; preds = %124
  %128 = call i64 @isatty(i32 0)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %156

130:                                              ; preds = %127
  %131 = call i32 (...) @using_history()
  %132 = load i32, i32* @rl_insert, align 4
  %133 = call i32 @rl_bind_key(i8 signext 9, i32 %132)
  %134 = load i32, i32* @PS1, align 4
  %135 = call i8* @readline(i32 %134)
  store i8* %135, i8** %6, align 8
  br label %136

136:                                              ; preds = %149, %130
  %137 = load i8*, i8** %6, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %154

139:                                              ; preds = %136
  %140 = load i32*, i32** %7, align 8
  %141 = load i8*, i8** %6, align 8
  %142 = call i32 @eval_print(i32* %140, i8* %141)
  %143 = load i8*, i8** %6, align 8
  %144 = load i8, i8* %143, align 1
  %145 = icmp ne i8 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %139
  %147 = load i8*, i8** %6, align 8
  %148 = call i32 @add_history(i8* %147)
  br label %149

149:                                              ; preds = %146, %139
  %150 = load i8*, i8** %6, align 8
  %151 = call i32 @free(i8* %150)
  %152 = load i32, i32* @PS1, align 4
  %153 = call i8* @readline(i32 %152)
  store i8* %153, i8** %6, align 8
  br label %136

154:                                              ; preds = %136
  %155 = call i32 @putchar(i8 signext 10)
  br label %169

156:                                              ; preds = %127
  %157 = call i8* (...) @read_stdin()
  store i8* %157, i8** %6, align 8
  %158 = load i8*, i8** %6, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %165

160:                                              ; preds = %156
  %161 = load i32*, i32** %7, align 8
  %162 = load i8*, i8** %6, align 8
  %163 = call i32 @js_dostring(i32* %161, i8* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %160, %156
  store i32 1, i32* %8, align 4
  br label %166

166:                                              ; preds = %165, %160
  %167 = load i8*, i8** %6, align 8
  %168 = call i32 @free(i8* %167)
  br label %169

169:                                              ; preds = %166, %154
  br label %170

170:                                              ; preds = %169, %124
  %171 = load i32*, i32** %7, align 8
  %172 = call i32 @js_gc(i32* %171, i32 0)
  %173 = load i32*, i32** %7, align 8
  %174 = call i32 @js_freestate(i32* %173)
  %175 = load i32, i32* %8, align 4
  ret i32 %175
}

declare dso_local i32 @xgetopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32* @js_newstate(i32*, i32*, i32) #1

declare dso_local i32 @js_newcfunction(i32*, i32, i8*, i32) #1

declare dso_local i32 @js_setglobal(i32*, i8*) #1

declare dso_local i32 @js_dostring(i32*, i8*) #1

declare dso_local i32 @js_newarray(i32*) #1

declare dso_local i32 @js_pushstring(i32*, i8*) #1

declare dso_local i32 @js_setindex(i32*, i32, i32) #1

declare dso_local i64 @js_dofile(i32*, i8*) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @using_history(...) #1

declare dso_local i32 @rl_bind_key(i8 signext, i32) #1

declare dso_local i8* @readline(i32) #1

declare dso_local i32 @eval_print(i32*, i8*) #1

declare dso_local i32 @add_history(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i8* @read_stdin(...) #1

declare dso_local i32 @js_gc(i32*, i32) #1

declare dso_local i32 @js_freestate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
