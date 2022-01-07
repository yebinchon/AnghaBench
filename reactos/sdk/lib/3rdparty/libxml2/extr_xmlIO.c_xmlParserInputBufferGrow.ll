; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmlIO.c_xmlParserInputBufferGrow.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmlIO.c_xmlParserInputBufferGrow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, i8*, i32)*, i32, i32*, i32*, i32, i8*, i32*, i32 }

@MINLEN = common dso_local global i32 0, align 4
@XML_IO_BUFFER_FULL = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"growing input buffer\00", align 1
@XML_ERR_NO_MEMORY = common dso_local global i8* null, align 8
@endOfInput = common dso_local global i32 0, align 4
@XML_IO_NO_INPUT = common dso_local global i8* null, align 8
@XML_IO_ENCODER = common dso_local global i8* null, align 8
@xmlGenericErrorContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlParserInputBufferGrow(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = icmp eq %struct.TYPE_4__* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 5
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %2
  store i32 -1, i32* %3, align 4
  br label %159

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @MINLEN, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 4
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @MINLEN, align 4
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %25, %22, %18
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @xmlBufAvail(i32* %30)
  %32 = icmp sle i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i8*, i8** @XML_IO_BUFFER_FULL, align 8
  %35 = call i32 @xmlIOErr(i8* %34, i32* null)
  %36 = load i8*, i8** @XML_IO_BUFFER_FULL, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  store i32 -1, i32* %3, align 4
  br label %159

39:                                               ; preds = %27
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  %45 = call i64 @xmlBufGrow(i32* %42, i32 %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = call i32 @xmlIOErrMemory(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %49 = load i8*, i8** @XML_ERR_NO_MEMORY, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  store i32 -1, i32* %3, align 4
  br label %159

52:                                               ; preds = %39
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i64 @xmlBufEnd(i32* %55)
  %57 = inttoptr i64 %56 to i8*
  store i8* %57, i8** %6, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %59, align 8
  %61 = icmp ne i32 (i32, i8*, i32)* %60, null
  br i1 %61, label %62, label %82

62:                                               ; preds = %52
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %64, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i32, i32* %5, align 4
  %72 = call i32 %65(i32 %68, i8* %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %62
  %76 = load i32, i32* @endOfInput, align 4
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i32 (i32, i8*, i32)*
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 (i32, i8*, i32)* %78, i32 (i32, i8*, i32)** %80, align 8
  br label %81

81:                                               ; preds = %75, %62
  br label %88

82:                                               ; preds = %52
  %83 = load i8*, i8** @XML_IO_NO_INPUT, align 8
  %84 = call i32 @xmlIOErr(i8* %83, i32* null)
  %85 = load i8*, i8** @XML_IO_NO_INPUT, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 5
  store i8* %85, i8** %87, align 8
  store i32 -1, i32* %3, align 4
  br label %159

88:                                               ; preds = %81
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 -1, i32* %3, align 4
  br label %159

92:                                               ; preds = %88
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97, %92
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %5, align 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 6
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %150

104:                                              ; preds = %98
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = call i32* (...) @xmlBufCreate()
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 3
  store i32* %110, i32** %112, align 8
  br label %113

113:                                              ; preds = %109, %104
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = bitcast i8* %117 to i32*
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @xmlBufAdd(i32* %116, i32* %118, i32 %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  store i32 -1, i32* %3, align 4
  br label %159

124:                                              ; preds = %113
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @xmlBufUse(i32* %127)
  store i32 %128, i32* %9, align 4
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %130 = call i32 @xmlCharEncInput(%struct.TYPE_4__* %129, i32 1)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %124
  %134 = load i8*, i8** @XML_IO_ENCODER, align 8
  %135 = call i32 @xmlIOErr(i8* %134, i32* null)
  %136 = load i8*, i8** @XML_IO_ENCODER, align 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 5
  store i8* %136, i8** %138, align 8
  store i32 -1, i32* %3, align 4
  br label %159

139:                                              ; preds = %124
  %140 = load i32, i32* %9, align 4
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @xmlBufUse(i32* %143)
  %145 = sub i32 %140, %144
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = add i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %157

150:                                              ; preds = %98
  %151 = load i32, i32* %5, align 4
  store i32 %151, i32* %8, align 4
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @xmlBufAddLen(i32* %154, i32 %155)
  br label %157

157:                                              ; preds = %150, %139
  %158 = load i32, i32* %8, align 4
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %157, %133, %123, %91, %82, %47, %33, %17
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i64 @xmlBufAvail(i32*) #1

declare dso_local i32 @xmlIOErr(i8*, i32*) #1

declare dso_local i64 @xmlBufGrow(i32*, i32) #1

declare dso_local i32 @xmlIOErrMemory(i8*) #1

declare dso_local i64 @xmlBufEnd(i32*) #1

declare dso_local i32* @xmlBufCreate(...) #1

declare dso_local i32 @xmlBufAdd(i32*, i32*, i32) #1

declare dso_local i32 @xmlBufUse(i32*) #1

declare dso_local i32 @xmlCharEncInput(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @xmlBufAddLen(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
