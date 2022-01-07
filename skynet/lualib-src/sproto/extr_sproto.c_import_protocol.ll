; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_import_protocol.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_import_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sproto = type { i32, i32* }
%struct.protocol = type { i32, i32, i32*, i32** }

@SIZEOF_LENGTH = common dso_local global i32 0, align 4
@SIZEOF_HEADER = common dso_local global i32 0, align 4
@SPROTO_REQUEST = common dso_local global i64 0, align 8
@SPROTO_RESPONSE = common dso_local global i64 0, align 8
@SIZEOF_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.sproto*, %struct.protocol*, i32*)* @import_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @import_protocol(%struct.sproto* %0, %struct.protocol* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sproto*, align 8
  %6 = alloca %struct.protocol*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sproto* %0, %struct.sproto** %5, align 8
  store %struct.protocol* %1, %struct.protocol** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @todword(i32* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @SIZEOF_LENGTH, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @struct_field(i32* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @SIZEOF_HEADER, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32* %30, i32** %7, align 8
  %31 = load %struct.protocol*, %struct.protocol** %6, align 8
  %32 = getelementptr inbounds %struct.protocol, %struct.protocol* %31, i32 0, i32 2
  store i32* null, i32** %32, align 8
  %33 = load %struct.protocol*, %struct.protocol** %6, align 8
  %34 = getelementptr inbounds %struct.protocol, %struct.protocol* %33, i32 0, i32 0
  store i32 -1, i32* %34, align 8
  %35 = load %struct.protocol*, %struct.protocol** %6, align 8
  %36 = getelementptr inbounds %struct.protocol, %struct.protocol* %35, i32 0, i32 3
  %37 = load i32**, i32*** %36, align 8
  %38 = load i64, i64* @SPROTO_REQUEST, align 8
  %39 = getelementptr inbounds i32*, i32** %37, i64 %38
  store i32* null, i32** %39, align 8
  %40 = load %struct.protocol*, %struct.protocol** %6, align 8
  %41 = getelementptr inbounds %struct.protocol, %struct.protocol* %40, i32 0, i32 3
  %42 = load i32**, i32*** %41, align 8
  %43 = load i64, i64* @SPROTO_RESPONSE, align 8
  %44 = getelementptr inbounds i32*, i32** %42, i64 %43
  store i32* null, i32** %44, align 8
  %45 = load %struct.protocol*, %struct.protocol** %6, align 8
  %46 = getelementptr inbounds %struct.protocol, %struct.protocol* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %146, %3
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %151

51:                                               ; preds = %47
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* @SIZEOF_FIELD, align 4
  %54 = load i32, i32* %11, align 4
  %55 = mul nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = call i32 @toword(i32* %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %51
  %63 = load i32, i32* %13, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sdiv i32 %64, 2
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %12, align 4
  br label %146

68:                                               ; preds = %51
  %69 = load i32, i32* %13, align 4
  %70 = sdiv i32 %69, 2
  %71 = sub nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %11, align 4
  switch i32 %72, label %144 [
    i32 0, label %73
    i32 1, label %88
    i32 2, label %96
    i32 3, label %118
    i32 4, label %140
  ]

73:                                               ; preds = %68
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, -1
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32* null, i32** %4, align 8
  br label %164

77:                                               ; preds = %73
  %78 = load %struct.sproto*, %struct.sproto** %5, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* @SIZEOF_FIELD, align 4
  %81 = load i32, i32* %10, align 4
  %82 = mul nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  %85 = call i32* @import_string(%struct.sproto* %78, i32* %84)
  %86 = load %struct.protocol*, %struct.protocol** %6, align 8
  %87 = getelementptr inbounds %struct.protocol, %struct.protocol* %86, i32 0, i32 2
  store i32* %85, i32** %87, align 8
  br label %145

88:                                               ; preds = %68
  %89 = load i32, i32* %13, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32* null, i32** %4, align 8
  br label %164

92:                                               ; preds = %88
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.protocol*, %struct.protocol** %6, align 8
  %95 = getelementptr inbounds %struct.protocol, %struct.protocol* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %145

96:                                               ; preds = %68
  %97 = load i32, i32* %13, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.sproto*, %struct.sproto** %5, align 8
  %102 = getelementptr inbounds %struct.sproto, %struct.sproto* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp sge i32 %100, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %99, %96
  store i32* null, i32** %4, align 8
  br label %164

106:                                              ; preds = %99
  %107 = load %struct.sproto*, %struct.sproto** %5, align 8
  %108 = getelementptr inbounds %struct.sproto, %struct.sproto* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load %struct.protocol*, %struct.protocol** %6, align 8
  %114 = getelementptr inbounds %struct.protocol, %struct.protocol* %113, i32 0, i32 3
  %115 = load i32**, i32*** %114, align 8
  %116 = load i64, i64* @SPROTO_REQUEST, align 8
  %117 = getelementptr inbounds i32*, i32** %115, i64 %116
  store i32* %112, i32** %117, align 8
  br label %145

118:                                              ; preds = %68
  %119 = load i32, i32* %13, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %13, align 4
  %123 = load %struct.sproto*, %struct.sproto** %5, align 8
  %124 = getelementptr inbounds %struct.sproto, %struct.sproto* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp sge i32 %122, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %121, %118
  store i32* null, i32** %4, align 8
  br label %164

128:                                              ; preds = %121
  %129 = load %struct.sproto*, %struct.sproto** %5, align 8
  %130 = getelementptr inbounds %struct.sproto, %struct.sproto* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load %struct.protocol*, %struct.protocol** %6, align 8
  %136 = getelementptr inbounds %struct.protocol, %struct.protocol* %135, i32 0, i32 3
  %137 = load i32**, i32*** %136, align 8
  %138 = load i64, i64* @SPROTO_RESPONSE, align 8
  %139 = getelementptr inbounds i32*, i32** %137, i64 %138
  store i32* %134, i32** %139, align 8
  br label %145

140:                                              ; preds = %68
  %141 = load i32, i32* %13, align 4
  %142 = load %struct.protocol*, %struct.protocol** %6, align 8
  %143 = getelementptr inbounds %struct.protocol, %struct.protocol* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  br label %145

144:                                              ; preds = %68
  store i32* null, i32** %4, align 8
  br label %164

145:                                              ; preds = %140, %128, %106, %92, %77
  br label %146

146:                                              ; preds = %145, %62
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %12, align 4
  br label %47

151:                                              ; preds = %47
  %152 = load %struct.protocol*, %struct.protocol** %6, align 8
  %153 = getelementptr inbounds %struct.protocol, %struct.protocol* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = icmp eq i32* %154, null
  br i1 %155, label %161, label %156

156:                                              ; preds = %151
  %157 = load %struct.protocol*, %struct.protocol** %6, align 8
  %158 = getelementptr inbounds %struct.protocol, %struct.protocol* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156, %151
  store i32* null, i32** %4, align 8
  br label %164

162:                                              ; preds = %156
  %163 = load i32*, i32** %8, align 8
  store i32* %163, i32** %4, align 8
  br label %164

164:                                              ; preds = %162, %161, %144, %127, %105, %91, %76
  %165 = load i32*, i32** %4, align 8
  ret i32* %165
}

declare dso_local i32 @todword(i32*) #1

declare dso_local i32 @struct_field(i32*, i32) #1

declare dso_local i32 @toword(i32*) #1

declare dso_local i32* @import_string(%struct.sproto*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
