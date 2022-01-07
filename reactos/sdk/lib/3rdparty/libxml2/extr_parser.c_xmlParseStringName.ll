; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseStringName.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseStringName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@XML_MAX_NAMELEN = common dso_local global i32 0, align 4
@XML_MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@XML_PARSE_HUGE = common dso_local global i32 0, align 4
@XML_ERR_NAME_TOO_LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"NCName\00", align 1
@nbParseStringName = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.TYPE_7__*, i64**)* @xmlParseStringName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @xmlParseStringName(%struct.TYPE_7__* %0, i64** %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64** %1, i64*** %5, align 8
  %16 = load i32, i32* @XML_MAX_NAMELEN, align 4
  %17 = add nsw i32 %16, 5
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i64, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = load i64**, i64*** %5, align 8
  %22 = load i64*, i64** %21, align 8
  store i64* %22, i64** %8, align 8
  store i32 0, i32* %9, align 4
  %23 = load i64*, i64** %8, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @CUR_SCHAR(i64* %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @xmlIsNameStartChar(%struct.TYPE_7__* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  store i64* null, i64** %3, align 8
  store i32 1, i32* %12, align 4
  br label %169

31:                                               ; preds = %2
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @COPY_BUF(i32 %32, i64* %20, i32 %33, i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = load i64*, i64** %8, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  store i64* %39, i64** %8, align 8
  %40 = load i64*, i64** %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @CUR_SCHAR(i64* %40, i32 %41)
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %148, %31
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i64 @xmlIsNameChar(%struct.TYPE_7__* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %149

48:                                               ; preds = %43
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @COPY_BUF(i32 %49, i64* %20, i32 %50, i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = load i64*, i64** %8, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  store i64* %56, i64** %8, align 8
  %57 = load i64*, i64** %8, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @CUR_SCHAR(i64* %57, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @XML_MAX_NAMELEN, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %148

63:                                               ; preds = %48
  %64 = load i32, i32* %9, align 4
  %65 = mul nsw i32 %64, 2
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 8
  %69 = trunc i64 %68 to i32
  %70 = call i64 @xmlMallocAtomic(i32 %69)
  %71 = inttoptr i64 %70 to i64*
  store i64* %71, i64** %13, align 8
  %72 = load i64*, i64** %13, align 8
  %73 = icmp eq i64* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %63
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %76 = call i32 @xmlErrMemory(%struct.TYPE_7__* %75, i32* null)
  store i64* null, i64** %3, align 8
  store i32 1, i32* %12, align 4
  br label %169

77:                                               ; preds = %63
  %78 = load i64*, i64** %13, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @memcpy(i64* %78, i64* %20, i32 %79)
  br label %81

81:                                               ; preds = %127, %77
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i64 @xmlIsNameChar(%struct.TYPE_7__* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %140

86:                                               ; preds = %81
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 10
  %89 = load i32, i32* %14, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %127

91:                                               ; preds = %86
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @XML_MAX_NAME_LENGTH, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %91
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @XML_PARSE_HUGE, align 4
  %100 = and i32 %98, %99
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %104 = load i32, i32* @XML_ERR_NAME_TOO_LONG, align 4
  %105 = call i32 @xmlFatalErr(%struct.TYPE_7__* %103, i32 %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %106 = load i64*, i64** %13, align 8
  %107 = call i32 @xmlFree(i64* %106)
  store i64* null, i64** %3, align 8
  store i32 1, i32* %12, align 4
  br label %169

108:                                              ; preds = %95, %91
  %109 = load i32, i32* %14, align 4
  %110 = mul nsw i32 %109, 2
  store i32 %110, i32* %14, align 4
  %111 = load i64*, i64** %13, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 8
  %115 = trunc i64 %114 to i32
  %116 = call i64 @xmlRealloc(i64* %111, i32 %115)
  %117 = inttoptr i64 %116 to i64*
  store i64* %117, i64** %15, align 8
  %118 = load i64*, i64** %15, align 8
  %119 = icmp eq i64* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %108
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %122 = call i32 @xmlErrMemory(%struct.TYPE_7__* %121, i32* null)
  %123 = load i64*, i64** %13, align 8
  %124 = call i32 @xmlFree(i64* %123)
  store i64* null, i64** %3, align 8
  store i32 1, i32* %12, align 4
  br label %169

125:                                              ; preds = %108
  %126 = load i64*, i64** %15, align 8
  store i64* %126, i64** %13, align 8
  br label %127

127:                                              ; preds = %125, %86
  %128 = load i32, i32* %10, align 4
  %129 = load i64*, i64** %13, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @COPY_BUF(i32 %128, i64* %129, i32 %130, i32 %131)
  %133 = load i32, i32* %10, align 4
  %134 = load i64*, i64** %8, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  store i64* %136, i64** %8, align 8
  %137 = load i64*, i64** %8, align 8
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @CUR_SCHAR(i64* %137, i32 %138)
  store i32 %139, i32* %11, align 4
  br label %81

140:                                              ; preds = %81
  %141 = load i64*, i64** %13, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  store i64 0, i64* %144, align 8
  %145 = load i64*, i64** %8, align 8
  %146 = load i64**, i64*** %5, align 8
  store i64* %145, i64** %146, align 8
  %147 = load i64*, i64** %13, align 8
  store i64* %147, i64** %3, align 8
  store i32 1, i32* %12, align 4
  br label %169

148:                                              ; preds = %48
  br label %43

149:                                              ; preds = %43
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* @XML_MAX_NAME_LENGTH, align 4
  %152 = icmp sgt i32 %150, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %149
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @XML_PARSE_HUGE, align 4
  %158 = and i32 %156, %157
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %153
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %162 = load i32, i32* @XML_ERR_NAME_TOO_LONG, align 4
  %163 = call i32 @xmlFatalErr(%struct.TYPE_7__* %161, i32 %162, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i64* null, i64** %3, align 8
  store i32 1, i32* %12, align 4
  br label %169

164:                                              ; preds = %153, %149
  %165 = load i64*, i64** %8, align 8
  %166 = load i64**, i64*** %5, align 8
  store i64* %165, i64** %166, align 8
  %167 = load i32, i32* %9, align 4
  %168 = call i64* @xmlStrndup(i64* %20, i32 %167)
  store i64* %168, i64** %3, align 8
  store i32 1, i32* %12, align 4
  br label %169

169:                                              ; preds = %164, %160, %140, %120, %102, %74, %30
  %170 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %170)
  %171 = load i64*, i64** %3, align 8
  ret i64* %171
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CUR_SCHAR(i64*, i32) #2

declare dso_local i32 @xmlIsNameStartChar(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @COPY_BUF(i32, i64*, i32, i32) #2

declare dso_local i64 @xmlIsNameChar(%struct.TYPE_7__*, i32) #2

declare dso_local i64 @xmlMallocAtomic(i32) #2

declare dso_local i32 @xmlErrMemory(%struct.TYPE_7__*, i32*) #2

declare dso_local i32 @memcpy(i64*, i64*, i32) #2

declare dso_local i32 @xmlFatalErr(%struct.TYPE_7__*, i32, i8*) #2

declare dso_local i32 @xmlFree(i64*) #2

declare dso_local i64 @xmlRealloc(i64*, i32) #2

declare dso_local i64* @xmlStrndup(i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
