; ModuleID = '/home/carl/AnghaBench/vlc/src/text/extr_strings.c_vlc_xml_decode.c'
source_filename = "/home/carl/AnghaBench/vlc/src/text/extr_strings.c_vlc_xml_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xml_entity_s = type { i32, i32 }

@xml_entities = common dso_local global i32 0, align 4
@cmp_entity = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_xml_decode(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.xml_entity_s*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  store i8* %8, i8** %3, align 8
  br label %9

9:                                                ; preds = %182, %1
  %10 = load i8*, i8** %2, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %185

13:                                               ; preds = %9
  %14 = load i8*, i8** %2, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 38
  br i1 %17, label %18, label %176

18:                                               ; preds = %13
  %19 = load i8*, i8** %2, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 35
  br i1 %23, label %24, label %134

24:                                               ; preds = %18
  %25 = load i8*, i8** %2, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 120
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i8*, i8** %2, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 3
  %33 = call i64 @strtoul(i8* %32, i8** %4, i32 16)
  store i64 %33, i64* %5, align 8
  br label %38

34:                                               ; preds = %24
  %35 = load i8*, i8** %2, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = call i64 @strtoul(i8* %36, i8** %4, i32 10)
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i8*, i8** %4, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 59
  br i1 %42, label %43, label %127

43:                                               ; preds = %38
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  store i8* %45, i8** %2, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %126

49:                                               ; preds = %43
  %50 = load i64, i64* %5, align 8
  %51 = icmp ule i64 %50, 127
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i64, i64* %5, align 8
  %54 = trunc i64 %53 to i8
  %55 = load i8*, i8** %3, align 8
  store i8 %54, i8* %55, align 1
  br label %125

56:                                               ; preds = %49
  %57 = load i64, i64* %5, align 8
  %58 = icmp ule i64 %57, 2047
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load i64, i64* %5, align 8
  %61 = lshr i64 %60, 6
  %62 = or i64 192, %61
  %63 = trunc i64 %62 to i8
  %64 = load i8*, i8** %3, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %3, align 8
  store i8 %63, i8* %64, align 1
  %66 = load i64, i64* %5, align 8
  %67 = and i64 %66, 63
  %68 = or i64 128, %67
  %69 = trunc i64 %68 to i8
  %70 = load i8*, i8** %3, align 8
  store i8 %69, i8* %70, align 1
  br label %124

71:                                               ; preds = %56
  %72 = load i64, i64* %5, align 8
  %73 = icmp ule i64 %72, 65535
  br i1 %73, label %74, label %93

74:                                               ; preds = %71
  %75 = load i64, i64* %5, align 8
  %76 = lshr i64 %75, 12
  %77 = or i64 224, %76
  %78 = trunc i64 %77 to i8
  %79 = load i8*, i8** %3, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %3, align 8
  store i8 %78, i8* %79, align 1
  %81 = load i64, i64* %5, align 8
  %82 = lshr i64 %81, 6
  %83 = and i64 %82, 63
  %84 = or i64 128, %83
  %85 = trunc i64 %84 to i8
  %86 = load i8*, i8** %3, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %3, align 8
  store i8 %85, i8* %86, align 1
  %88 = load i64, i64* %5, align 8
  %89 = and i64 %88, 63
  %90 = or i64 128, %89
  %91 = trunc i64 %90 to i8
  %92 = load i8*, i8** %3, align 8
  store i8 %91, i8* %92, align 1
  br label %123

93:                                               ; preds = %71
  %94 = load i64, i64* %5, align 8
  %95 = icmp ule i64 %94, 2097151
  br i1 %95, label %96, label %122

96:                                               ; preds = %93
  %97 = load i64, i64* %5, align 8
  %98 = lshr i64 %97, 18
  %99 = or i64 240, %98
  %100 = trunc i64 %99 to i8
  %101 = load i8*, i8** %3, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %3, align 8
  store i8 %100, i8* %101, align 1
  %103 = load i64, i64* %5, align 8
  %104 = lshr i64 %103, 12
  %105 = and i64 %104, 63
  %106 = or i64 128, %105
  %107 = trunc i64 %106 to i8
  %108 = load i8*, i8** %3, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %3, align 8
  store i8 %107, i8* %108, align 1
  %110 = load i64, i64* %5, align 8
  %111 = lshr i64 %110, 6
  %112 = and i64 %111, 63
  %113 = or i64 128, %112
  %114 = trunc i64 %113 to i8
  %115 = load i8*, i8** %3, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %3, align 8
  store i8 %114, i8* %115, align 1
  %117 = load i64, i64* %5, align 8
  %118 = and i64 %117, 63
  %119 = or i64 128, %118
  %120 = trunc i64 %119 to i8
  %121 = load i8*, i8** %3, align 8
  store i8 %120, i8* %121, align 1
  br label %122

122:                                              ; preds = %96, %93
  br label %123

123:                                              ; preds = %122, %74
  br label %124

124:                                              ; preds = %123, %59
  br label %125

125:                                              ; preds = %124, %52
  br label %126

126:                                              ; preds = %125, %48
  br label %133

127:                                              ; preds = %38
  %128 = load i8*, i8** %2, align 8
  %129 = load i8, i8* %128, align 1
  %130 = load i8*, i8** %3, align 8
  store i8 %129, i8* %130, align 1
  %131 = load i8*, i8** %2, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %2, align 8
  br label %133

133:                                              ; preds = %127, %126
  br label %175

134:                                              ; preds = %18
  %135 = load i8*, i8** %2, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  %137 = load i32, i32* @xml_entities, align 4
  %138 = load i32, i32* @xml_entities, align 4
  %139 = call i32 @ARRAY_SIZE(i32 %138)
  %140 = load i32, i32* @cmp_entity, align 4
  %141 = call %struct.xml_entity_s* @bsearch(i8* %136, i32 %137, i32 %139, i32 8, i32 %140)
  store %struct.xml_entity_s* %141, %struct.xml_entity_s** %6, align 8
  %142 = load %struct.xml_entity_s*, %struct.xml_entity_s** %6, align 8
  %143 = icmp ne %struct.xml_entity_s* %142, null
  br i1 %143, label %144, label %168

144:                                              ; preds = %134
  %145 = load %struct.xml_entity_s*, %struct.xml_entity_s** %6, align 8
  %146 = getelementptr inbounds %struct.xml_entity_s, %struct.xml_entity_s* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @strlen(i32 %147)
  %149 = sext i32 %148 to i64
  store i64 %149, i64* %7, align 8
  %150 = load i8*, i8** %3, align 8
  %151 = load %struct.xml_entity_s*, %struct.xml_entity_s** %6, align 8
  %152 = getelementptr inbounds %struct.xml_entity_s, %struct.xml_entity_s* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i64, i64* %7, align 8
  %155 = call i32 @memcpy(i8* %150, i32 %153, i64 %154)
  %156 = load i64, i64* %7, align 8
  %157 = sub i64 %156, 1
  %158 = load i8*, i8** %3, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 %157
  store i8* %159, i8** %3, align 8
  %160 = load %struct.xml_entity_s*, %struct.xml_entity_s** %6, align 8
  %161 = getelementptr inbounds %struct.xml_entity_s, %struct.xml_entity_s* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @strlen(i32 %162)
  %164 = add nsw i32 %163, 1
  %165 = load i8*, i8** %2, align 8
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i8, i8* %165, i64 %166
  store i8* %167, i8** %2, align 8
  br label %174

168:                                              ; preds = %134
  %169 = load i8*, i8** %2, align 8
  %170 = load i8, i8* %169, align 1
  %171 = load i8*, i8** %3, align 8
  store i8 %170, i8* %171, align 1
  %172 = load i8*, i8** %2, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %2, align 8
  br label %174

174:                                              ; preds = %168, %144
  br label %175

175:                                              ; preds = %174, %133
  br label %182

176:                                              ; preds = %13
  %177 = load i8*, i8** %2, align 8
  %178 = load i8, i8* %177, align 1
  %179 = load i8*, i8** %3, align 8
  store i8 %178, i8* %179, align 1
  %180 = load i8*, i8** %2, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %2, align 8
  br label %182

182:                                              ; preds = %176, %175
  %183 = load i8*, i8** %3, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %3, align 8
  br label %9

185:                                              ; preds = %9
  %186 = load i8*, i8** %3, align 8
  store i8 0, i8* %186, align 1
  ret void
}

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local %struct.xml_entity_s* @bsearch(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
