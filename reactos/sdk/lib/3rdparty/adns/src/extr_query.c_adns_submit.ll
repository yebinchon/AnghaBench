; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_query.c_adns_submit.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_query.c_adns_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i64, i8* }
%struct.timeval = type { i32 }

@cc_entex = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@adns_s_querydomaininvalid = common dso_local global i32 0, align 4
@DNS_MAXDOMAIN = common dso_local global i32 0, align 4
@adns_s_querydomaintoolong = common dso_local global i32 0, align 4
@adns_qf_search = common dso_local global i32 0, align 4
@adns_s_nomemory = common dso_local global i32 0, align 4
@adns_qf_owner = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adns_submit(%struct.TYPE_18__* %0, i8* %1, i32 %2, i32 %3, i8* %4, %struct.TYPE_19__** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_19__**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.timeval, align 4
  %20 = alloca %struct.TYPE_19__*, align 8
  %21 = alloca i8*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store %struct.TYPE_19__** %5, %struct.TYPE_19__*** %13, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %23 = load i32, i32* @cc_entex, align 4
  %24 = call i32 @adns__consistency(%struct.TYPE_18__* %22, %struct.TYPE_19__* null, i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = call i32* @adns__findtype(i32 %25)
  store i32* %26, i32** %18, align 8
  %27 = load i32*, i32** %18, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %6
  %30 = load i32, i32* @ENOSYS, align 4
  store i32 %30, i32* %7, align 4
  br label %202

31:                                               ; preds = %6
  %32 = call i32 @gettimeofday(%struct.timeval* %19, i32 0)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %194

36:                                               ; preds = %31
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %38 = load i32*, i32** %18, align 8
  %39 = load i32, i32* %11, align 4
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.TYPE_19__* @query_alloc(%struct.TYPE_18__* %37, i32* %38, i32 %39, i32 %41)
  store %struct.TYPE_19__* %42, %struct.TYPE_19__** %20, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %44 = icmp ne %struct.TYPE_19__* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  br label %194

46:                                               ; preds = %36
  %47 = load i8*, i8** %12, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 2
  store i8* %47, i8** %50, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = call i32 @memset(i32* %56, i32 0, i32 4)
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %59 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %13, align 8
  store %struct.TYPE_19__* %58, %struct.TYPE_19__** %59, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @strlen(i8* %60)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %46
  %65 = load i32, i32* @adns_s_querydomaininvalid, align 4
  store i32 %65, i32* %17, align 4
  br label %186

66:                                               ; preds = %46
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* @DNS_MAXDOMAIN, align 4
  %69 = add nsw i32 %68, 1
  %70 = icmp sgt i32 %67, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @adns_s_querydomaintoolong, align 4
  store i32 %72, i32* %17, align 4
  br label %186

73:                                               ; preds = %66
  %74 = load i32, i32* %15, align 4
  %75 = icmp sge i32 %74, 1
  br i1 %75, label %76, label %107

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 46
  br i1 %84, label %85, label %107

85:                                               ; preds = %76
  %86 = load i32, i32* %15, align 4
  %87 = icmp slt i32 %86, 2
  br i1 %87, label %97, label %88

88:                                               ; preds = %85
  %89 = load i8*, i8** %9, align 8
  %90 = load i32, i32* %15, align 4
  %91 = sub nsw i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 92
  br i1 %96, label %97, label %107

97:                                               ; preds = %88, %85
  %98 = load i32, i32* @adns_qf_search, align 4
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %11, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %15, align 4
  br label %107

107:                                              ; preds = %97, %88, %76, %73
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @adns_qf_search, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %153

112:                                              ; preds = %107
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 3
  %115 = load i8*, i8** %9, align 8
  %116 = bitcast i8* %115 to i32*
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @adns__vbuf_append(i32* %114, i32* %116, i32 %117)
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %14, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %112
  %122 = load i32, i32* @adns_s_nomemory, align 4
  store i32 %122, i32* %17, align 4
  br label %186

123:                                              ; preds = %112
  store i32 0, i32* %16, align 4
  %124 = load i8*, i8** %9, align 8
  store i8* %124, i8** %21, align 8
  br label %125

125:                                              ; preds = %130, %123
  %126 = load i8*, i8** %21, align 8
  %127 = call i8* @strchr(i8* %126, i8 signext 46)
  store i8* %127, i8** %21, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  br label %130

130:                                              ; preds = %129
  %131 = load i8*, i8** %21, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %21, align 8
  %133 = load i32, i32* %16, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %16, align 4
  br label %125

135:                                              ; preds = %125
  %136 = load i32, i32* %16, align 4
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp sge i32 %136, %139
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 -1, i32 0
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %15, align 4
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 8
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %150 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @adns__search_next(%struct.TYPE_18__* %148, %struct.TYPE_19__* %149, i32 %151)
  br label %177

153:                                              ; preds = %107
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* @adns_qf_owner, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %153
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %160 = load i8*, i8** %9, align 8
  %161 = load i32, i32* %15, align 4
  %162 = call i32 @save_owner(%struct.TYPE_19__* %159, i8* %160, i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %158
  %165 = load i32, i32* @adns_s_nomemory, align 4
  store i32 %165, i32* %17, align 4
  br label %186

166:                                              ; preds = %158
  br label %167

167:                                              ; preds = %166, %153
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %170 = load i8*, i8** %9, align 8
  %171 = load i32, i32* %15, align 4
  %172 = load i32*, i32** %18, align 8
  %173 = load i32, i32* %11, align 4
  %174 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @query_simple(%struct.TYPE_18__* %168, %struct.TYPE_19__* %169, i8* %170, i32 %171, i32* %172, i32 %173, i32 %175)
  br label %177

177:                                              ; preds = %167, %135
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %179 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @adns__autosys(%struct.TYPE_18__* %178, i32 %180)
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %184 = load i32, i32* @cc_entex, align 4
  %185 = call i32 @adns__consistency(%struct.TYPE_18__* %182, %struct.TYPE_19__* %183, i32 %184)
  store i32 0, i32* %7, align 4
  br label %202

186:                                              ; preds = %164, %121, %71, %64
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %188 = load i32, i32* %17, align 4
  %189 = call i32 @adns__query_fail(%struct.TYPE_19__* %187, i32 %188)
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %192 = load i32, i32* @cc_entex, align 4
  %193 = call i32 @adns__consistency(%struct.TYPE_18__* %190, %struct.TYPE_19__* %191, i32 %192)
  store i32 0, i32* %7, align 4
  br label %202

194:                                              ; preds = %45, %35
  %195 = load i32, i32* @errno, align 4
  store i32 %195, i32* %14, align 4
  %196 = load i32, i32* %14, align 4
  %197 = call i32 @assert(i32 %196)
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %199 = load i32, i32* @cc_entex, align 4
  %200 = call i32 @adns__consistency(%struct.TYPE_18__* %198, %struct.TYPE_19__* null, i32 %199)
  %201 = load i32, i32* %14, align 4
  store i32 %201, i32* %7, align 4
  br label %202

202:                                              ; preds = %194, %186, %177, %29
  %203 = load i32, i32* %7, align 4
  ret i32 %203
}

declare dso_local i32 @adns__consistency(%struct.TYPE_18__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32* @adns__findtype(i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32) #1

declare dso_local %struct.TYPE_19__* @query_alloc(%struct.TYPE_18__*, i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @adns__vbuf_append(i32*, i32*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @adns__search_next(%struct.TYPE_18__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @save_owner(%struct.TYPE_19__*, i8*, i32) #1

declare dso_local i32 @query_simple(%struct.TYPE_18__*, %struct.TYPE_19__*, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @adns__autosys(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @adns__query_fail(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
