; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/tools/extr_apinames.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/tools/extr_apinames.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OUTPUT_LIST = common dso_local global i32 0, align 4
@stdout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"could not open '%s' for writing\0A\00", align 1
@OUTPUT_WINDOWS_DEF = common dso_local global i32 0, align 4
@OUTPUT_BORLAND_DEF = common dso_local global i32 0, align 4
@OUTPUT_WATCOM_LBC = common dso_local global i32 0, align 4
@OUTPUT_NETWARE_IMP = common dso_local global i32 0, align 4
@stdin = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"unable to open '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"opening '%s'\0A\00", align 1
@num_names = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"could not find exported functions !!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @OUTPUT_LIST, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** @stdout, align 8
  store i32* %14, i32** %9, align 8
  store i8* null, i8** %10, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 (...) @usage()
  br label %19

19:                                               ; preds = %17, %2
  br label %20

20:                                               ; preds = %120, %19
  %21 = load i32, i32* %4, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 45
  br label %31

31:                                               ; preds = %23, %20
  %32 = phi i1 [ false, %20 ], [ %30, %23 ]
  br i1 %32, label %33, label %125

33:                                               ; preds = %31
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %11, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  switch i32 %40, label %118 [
    i32 118, label %41
    i32 111, label %42
    i32 100, label %77
    i32 119, label %101
    i32 0, label %117
  ]

41:                                               ; preds = %33
  store i32 1, i32* %7, align 4
  br label %120

42:                                               ; preds = %33
  %43 = load i8*, i8** %11, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 2
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 (...) @usage()
  br label %53

53:                                               ; preds = %51, %48
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 2
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %11, align 8
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i32 1
  store i8** %58, i8*** %5, align 8
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %4, align 4
  br label %64

61:                                               ; preds = %42
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  store i8* %63, i8** %11, align 8
  br label %64

64:                                               ; preds = %61, %53
  %65 = load i8*, i8** %11, align 8
  %66 = call i32* @fopen(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %66, i32** %9, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %76, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @stderr, align 4
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 2
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @fprintf(i32 %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  %75 = call i32 @exit(i32 3) #3
  unreachable

76:                                               ; preds = %64
  br label %120

77:                                               ; preds = %33
  %78 = load i8*, i8** %11, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %77
  %84 = load i32, i32* %4, align 4
  %85 = icmp slt i32 %84, 2
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 (...) @usage()
  br label %88

88:                                               ; preds = %86, %83
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 2
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %11, align 8
  %92 = load i8**, i8*** %5, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i32 1
  store i8** %93, i8*** %5, align 8
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %4, align 4
  br label %99

96:                                               ; preds = %77
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 2
  store i8* %98, i8** %11, align 8
  br label %99

99:                                               ; preds = %96, %88
  %100 = load i8*, i8** %11, align 8
  store i8* %100, i8** %10, align 8
  br label %120

101:                                              ; preds = %33
  %102 = load i32, i32* @OUTPUT_WINDOWS_DEF, align 4
  store i32 %102, i32* %8, align 4
  %103 = load i8*, i8** %11, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  switch i32 %106, label %114 [
    i32 66, label %107
    i32 87, label %109
    i32 78, label %111
    i32 0, label %113
  ]

107:                                              ; preds = %101
  %108 = load i32, i32* @OUTPUT_BORLAND_DEF, align 4
  store i32 %108, i32* %8, align 4
  br label %116

109:                                              ; preds = %101
  %110 = load i32, i32* @OUTPUT_WATCOM_LBC, align 4
  store i32 %110, i32* %8, align 4
  br label %116

111:                                              ; preds = %101
  %112 = load i32, i32* @OUTPUT_NETWARE_IMP, align 4
  store i32 %112, i32* %8, align 4
  br label %116

113:                                              ; preds = %101
  br label %116

114:                                              ; preds = %101
  %115 = call i32 (...) @usage()
  br label %116

116:                                              ; preds = %114, %113, %111, %109, %107
  br label %120

117:                                              ; preds = %33
  store i32 1, i32* %6, align 4
  br label %120

118:                                              ; preds = %33
  %119 = call i32 (...) @usage()
  br label %120

120:                                              ; preds = %118, %117, %116, %99, %76, %41
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %4, align 4
  %123 = load i8**, i8*** %5, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i32 1
  store i8** %124, i8*** %5, align 8
  br label %20

125:                                              ; preds = %31
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32*, i32** @stdin, align 8
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @read_header_file(i32* %129, i32 %130)
  br label %175

132:                                              ; preds = %125
  %133 = load i32, i32* %4, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %4, align 4
  %135 = load i8**, i8*** %5, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i32 1
  store i8** %136, i8*** %5, align 8
  br label %137

137:                                              ; preds = %169, %132
  %138 = load i32, i32* %4, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %174

140:                                              ; preds = %137
  %141 = load i8**, i8*** %5, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i32* @fopen(i8* %143, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %144, i32** %12, align 8
  %145 = load i32*, i32** %12, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %153, label %147

147:                                              ; preds = %140
  %148 = load i32, i32* @stderr, align 4
  %149 = load i8**, i8*** %5, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @fprintf(i32 %148, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %151)
  br label %168

153:                                              ; preds = %140
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = load i32, i32* @stderr, align 4
  %158 = load i8**, i8*** %5, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 0
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @fprintf(i32 %157, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %160)
  br label %162

162:                                              ; preds = %156, %153
  %163 = load i32*, i32** %12, align 8
  %164 = load i32, i32* %7, align 4
  %165 = call i32 @read_header_file(i32* %163, i32 %164)
  %166 = load i32*, i32** %12, align 8
  %167 = call i32 @fclose(i32* %166)
  br label %168

168:                                              ; preds = %162, %147
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %4, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %4, align 4
  %172 = load i8**, i8*** %5, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i32 1
  store i8** %173, i8*** %5, align 8
  br label %137

174:                                              ; preds = %137
  br label %175

175:                                              ; preds = %174, %128
  %176 = load i64, i64* @num_names, align 8
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  %179 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %180

180:                                              ; preds = %178, %175
  %181 = call i32 (...) @names_sort()
  %182 = load i32*, i32** %9, align 8
  %183 = load i32, i32* %8, align 4
  %184 = load i8*, i8** %10, align 8
  %185 = call i32 @names_dump(i32* %182, i32 %183, i8* %184)
  %186 = load i32*, i32** %9, align 8
  %187 = load i32*, i32** @stdout, align 8
  %188 = icmp ne i32* %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %180
  %190 = load i32*, i32** %9, align 8
  %191 = call i32 @fclose(i32* %190)
  br label %192

192:                                              ; preds = %189, %180
  ret i32 0
}

declare dso_local i32 @usage(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @read_header_file(i32*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @names_sort(...) #1

declare dso_local i32 @names_dump(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
