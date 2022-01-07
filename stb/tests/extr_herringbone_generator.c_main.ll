; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_herringbone_generator.c_main.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_herringbone_generator.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i8**, i8*, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Invalid command-line arguments\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Usage (see source for corner & edge type definitions):\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [589 x i8] c"herringbone_generator {outfile} c {sidelen} {c0} {c1} {c2} {c3} [{vx} {vy}]\0A     {outfile}  -- filename that template will be written to as PNG\0A     {sidelen}  -- length of short side of rectangle in pixels\0A     {c0}       -- number of colors for corner type 0\0A     {c1}       -- number of colors for corner type 1\0A     {c2}       -- number of colors for corner type 2\0A     {c3}       -- number of colors for corner type 3\0A     {vx}       -- number of color-duplicating variations horizontally in template\0A     {vy}       -- number of color-duplicating variations vertically in template\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [694 x i8] c"herringbone_generator {outfile} e {sidelen} {e0} {e1} {e2} {e3} {e4} {e5} [{vx} {vy}]\0A     {outfile}  -- filename that template will be written to as PNG\0A     {sidelen}  -- length of short side of rectangle in pixels\0A     {e0}       -- number of colors for edge type 0\0A     {e1}       -- number of colors for edge type 1\0A     {e2}       -- number of colors for edge type 2\0A     {e3}       -- number of colors for edge type 3\0A     {e4}       -- number of colors for edge type 4\0A     {e5}       -- number of colors for edge type 5\0A     {vx}       -- number of color-duplicating variations horizontally in template\0A     {vy}       -- number of color-duplicating variations vertically in template\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = bitcast %struct.TYPE_4__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 40, i1 false)
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %137

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %134

20:                                               ; preds = %16
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 2
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  switch i32 %26, label %45 [
    i32 99, label %27
    i32 101, label %36
  ]

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 8
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = icmp sgt i32 %31, 10
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %27
  br label %134

34:                                               ; preds = %30
  store i32 4, i32* %9, align 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %46

36:                                               ; preds = %20
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 10
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = icmp sgt i32 %40, 12
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %36
  br label %134

43:                                               ; preds = %39
  store i32 6, i32* %9, align 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 0, i32* %44, align 8
  br label %46

45:                                               ; preds = %20
  br label %134

46:                                               ; preds = %43, %34
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 3
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @atoi(i8* %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 4
  store i8* %50, i8** %51, align 8
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %69, %46
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %52
  %57 = load i8**, i8*** %5, align 8
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 4, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %57, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @atoi(i8* %62)
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %65 = load i8**, i8*** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  store i8* %63, i8** %68, align 8
  br label %69

69:                                               ; preds = %56
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %52

72:                                               ; preds = %52
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32 1, i32* %73, align 4
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  store i32 1, i32* %74, align 8
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 4, %76
  %78 = icmp sgt i32 %75, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %72
  %80 = load i8**, i8*** %5, align 8
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 4, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %80, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = call i8* @atoi(i8* %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %79, %72
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 5, %91
  %93 = icmp sgt i32 %90, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = load i8**, i8*** %5, align 8
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 5, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %95, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i8* @atoi(i8* %100)
  %102 = ptrtoint i8* %101 to i32
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  store i32 %102, i32* %103, align 8
  br label %104

104:                                              ; preds = %94, %89
  %105 = call i32 @stbhw_get_template_size(%struct.TYPE_4__* %6, i32* %7, i32* %8)
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %8, align 4
  %108 = mul nsw i32 %106, %107
  %109 = mul nsw i32 %108, 3
  %110 = call i64 @malloc(i32 %109)
  %111 = inttoptr i64 %110 to i8*
  store i8* %111, i8** %11, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %7, align 4
  %116 = mul nsw i32 %115, 3
  %117 = call i64 @stbhw_make_template(%struct.TYPE_4__* %6, i8* %112, i32 %113, i32 %114, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %104
  %120 = load i8**, i8*** %5, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 1
  %122 = load i8*, i8** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %8, align 4
  %125 = load i8*, i8** %11, align 8
  %126 = load i32, i32* %7, align 4
  %127 = mul nsw i32 %126, 3
  %128 = call i32 @stbi_write_png(i8* %122, i32 %123, i32 %124, i32 3, i8* %125, i32 %127)
  br label %133

129:                                              ; preds = %104
  %130 = load i32, i32* @stderr, align 4
  %131 = call i8* (...) @stbhw_get_last_error()
  %132 = call i32 @fprintf(i32 %130, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %131)
  br label %133

133:                                              ; preds = %129, %119
  store i32 0, i32* %3, align 4
  br label %144

134:                                              ; preds = %45, %42, %33, %19
  %135 = load i32, i32* @stderr, align 4
  %136 = call i32 @fputs(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %134, %15
  %138 = load i32, i32* @stderr, align 4
  %139 = call i32 @fputs(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* @stderr, align 4
  %141 = call i32 @fputs(i8* getelementptr inbounds ([589 x i8], [589 x i8]* @.str.3, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* @stderr, align 4
  %143 = call i32 @fputs(i8* getelementptr inbounds ([694 x i8], [694 x i8]* @.str.4, i64 0, i64 0), i32 %142)
  store i32 1, i32* %3, align 4
  br label %144

144:                                              ; preds = %137, %133
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @atoi(i8*) #2

declare dso_local i32 @stbhw_get_template_size(%struct.TYPE_4__*, i32*, i32*) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i64 @stbhw_make_template(%struct.TYPE_4__*, i8*, i32, i32, i32) #2

declare dso_local i32 @stbi_write_png(i8*, i32, i32, i32, i8*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i8* @stbhw_get_last_error(...) #2

declare dso_local i32 @fputs(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
