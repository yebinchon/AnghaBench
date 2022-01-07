; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_..toxcoreDHT.c_addto_lists.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_..toxcoreDHT.c_addto_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i64, %struct.TYPE_23__*, i32 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_20__*, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32 (i32, i32, %struct.TYPE_21__*)* }
%struct.TYPE_21__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, %struct.TYPE_17__, %struct.TYPE_18__ }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_18__ = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@LCLIENT_LIST = common dso_local global i32 0, align 4
@MAX_FRIEND_CLIENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addto_lists(%struct.TYPE_24__* %0, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store i32* %2, i32** %5, align 8
  store i64 0, i64* %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AF_INET6, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @IPV6_IPV4_IN_V6(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %17
  %25 = load i64, i64* @AF_INET, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  br label %37

37:                                               ; preds = %24, %17, %3
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @LCLIENT_LIST, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @client_or_ip_port_in_list(i32 %40, i32 %41, i32* %42, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8 %1)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %37
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i64 @add_to_close(%struct.TYPE_24__* %46, i32* %47, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8 %1, i32 0)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %7, align 8
  br label %53

53:                                               ; preds = %50, %45
  br label %57

54:                                               ; preds = %37
  %55 = load i64, i64* %7, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %7, align 8
  br label %57

57:                                               ; preds = %54, %53
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %8, align 8
  store i64 0, i64* %6, align 8
  br label %58

58:                                               ; preds = %131, %57
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ult i64 %59, %62
  br i1 %63, label %64, label %134

64:                                               ; preds = %58
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MAX_FRIEND_CLIENTS, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @client_or_ip_port_in_list(i32 %71, i32 %72, i32* %73, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8 %1)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %113, label %76

76:                                               ; preds = %64
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %78, align 8
  %80 = load i64, i64* %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @MAX_FRIEND_CLIENTS, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %87, align 8
  %89 = load i64, i64* %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @replace_all(i32 %83, i32 %84, i32* %85, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8 %1, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %76
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %97, align 8
  %99 = load i64, i64* %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i64 %99
  store %struct.TYPE_23__* %100, %struct.TYPE_23__** %9, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @public_key_cmp(i32* %101, i32 %104)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %95
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  store %struct.TYPE_23__* %108, %struct.TYPE_23__** %8, align 8
  br label %109

109:                                              ; preds = %107, %95
  %110 = load i64, i64* %7, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %7, align 8
  br label %112

112:                                              ; preds = %109, %76
  br label %130

113:                                              ; preds = %64
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %115, align 8
  %117 = load i64, i64* %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i64 %117
  store %struct.TYPE_23__* %118, %struct.TYPE_23__** %10, align 8
  %119 = load i32*, i32** %5, align 8
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @public_key_cmp(i32* %119, i32 %122)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %113
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  store %struct.TYPE_23__* %126, %struct.TYPE_23__** %8, align 8
  br label %127

127:                                              ; preds = %125, %113
  %128 = load i64, i64* %7, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %7, align 8
  br label %130

130:                                              ; preds = %127, %112
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* %6, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %6, align 8
  br label %58

134:                                              ; preds = %58
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %136 = icmp ne %struct.TYPE_23__* %135, null
  br i1 %136, label %137, label %181

137:                                              ; preds = %134
  store i64 0, i64* %11, align 8
  br label %138

138:                                              ; preds = %177, %137
  %139 = load i64, i64* %11, align 8
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ult i64 %139, %142
  br i1 %143, label %144, label %180

144:                                              ; preds = %138
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %146, align 8
  %148 = load i64, i64* %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 2
  %151 = load i32 (i32, i32, %struct.TYPE_21__*)*, i32 (i32, i32, %struct.TYPE_21__*)** %150, align 8
  %152 = icmp ne i32 (i32, i32, %struct.TYPE_21__*)* %151, null
  br i1 %152, label %153, label %176

153:                                              ; preds = %144
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %155, align 8
  %157 = load i64, i64* %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 2
  %160 = load i32 (i32, i32, %struct.TYPE_21__*)*, i32 (i32, i32, %struct.TYPE_21__*)** %159, align 8
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %162, align 8
  %164 = load i64, i64* %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %169, align 8
  %171 = load i64, i64* %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 %160(i32 %167, i32 %174, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8 %1)
  br label %176

176:                                              ; preds = %153, %144
  br label %177

177:                                              ; preds = %176
  %178 = load i64, i64* %11, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %11, align 8
  br label %138

180:                                              ; preds = %138
  br label %181

181:                                              ; preds = %180, %134
  %182 = load i64, i64* %7, align 8
  %183 = trunc i64 %182 to i32
  ret i32 %183
}

declare dso_local i64 @IPV6_IPV4_IN_V6(i32*) #1

declare dso_local i32 @client_or_ip_port_in_list(i32, i32, i32*, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8) #1

declare dso_local i64 @add_to_close(%struct.TYPE_24__*, i32*, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8, i32) #1

declare dso_local i64 @replace_all(i32, i32, i32*, %struct.TYPE_21__* byval(%struct.TYPE_21__) align 8, i32) #1

declare dso_local i64 @public_key_cmp(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
