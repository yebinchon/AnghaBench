; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_invalid_output_encoding.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_test_invalid_output_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Failed to set output, hr %#x.\0A\00", align 1
@aW = common dso_local global i32 0, align 4
@MX_E_ENCODING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Unexpected hr %#x.\0A\00", align 1
@XmlStandalone_Yes = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to flush, hr %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @test_invalid_output_encoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_invalid_output_encoding(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i64 @IXmlWriter_SetOutput(i32* %6, i32* %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @aW, align 4
  %17 = load i32, i32* @aW, align 4
  %18 = call i64 @IXmlWriter_WriteAttributeString(i32* %15, i32* null, i32 %16, i32* null, i32 %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @MX_E_ENCODING, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @aW, align 4
  %27 = call i64 @IXmlWriter_WriteCData(i32* %25, i32 %26)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @MX_E_ENCODING, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call i64 @IXmlWriter_WriteCharEntity(i32* %34, i32 256)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @MX_E_ENCODING, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @aW, align 4
  %44 = call i64 @IXmlWriter_WriteChars(i32* %42, i32 %43, i32 1)
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @MX_E_ENCODING, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* @aW, align 4
  %53 = call i64 @IXmlWriter_WriteComment(i32* %51, i32 %52)
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @MX_E_ENCODING, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %58)
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* @aW, align 4
  %62 = call i64 @IXmlWriter_WriteElementString(i32* %60, i32* null, i32 %61, i32* null, i32* null)
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @MX_E_ENCODING, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %67)
  %69 = load i32*, i32** %3, align 8
  %70 = call i64 @IXmlWriter_WriteEndDocument(i32* %69)
  store i64 %70, i64* %5, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* @MX_E_ENCODING, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %75)
  %77 = load i32*, i32** %3, align 8
  %78 = call i64 @IXmlWriter_WriteEndElement(i32* %77)
  store i64 %78, i64* %5, align 8
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* @MX_E_ENCODING, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @ok(i32 %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %83)
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* @aW, align 4
  %87 = call i64 @IXmlWriter_WriteEntityRef(i32* %85, i32 %86)
  store i64 %87, i64* %5, align 8
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* @MX_E_ENCODING, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i64, i64* %5, align 8
  %93 = call i32 @ok(i32 %91, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %92)
  %94 = load i32*, i32** %3, align 8
  %95 = call i64 @IXmlWriter_WriteFullEndElement(i32* %94)
  store i64 %95, i64* %5, align 8
  %96 = load i64, i64* %5, align 8
  %97 = load i64, i64* @MX_E_ENCODING, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i64, i64* %5, align 8
  %101 = call i32 @ok(i32 %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %100)
  %102 = load i32*, i32** %3, align 8
  %103 = load i32, i32* @aW, align 4
  %104 = call i64 @IXmlWriter_WriteName(i32* %102, i32 %103)
  store i64 %104, i64* %5, align 8
  %105 = load i64, i64* %5, align 8
  %106 = load i64, i64* @MX_E_ENCODING, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i64, i64* %5, align 8
  %110 = call i32 @ok(i32 %108, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %109)
  %111 = load i32*, i32** %3, align 8
  %112 = load i32, i32* @aW, align 4
  %113 = call i64 @IXmlWriter_WriteNmToken(i32* %111, i32 %112)
  store i64 %113, i64* %5, align 8
  %114 = load i64, i64* %5, align 8
  %115 = load i64, i64* @MX_E_ENCODING, align 8
  %116 = icmp eq i64 %114, %115
  %117 = zext i1 %116 to i32
  %118 = load i64, i64* %5, align 8
  %119 = call i32 @ok(i32 %117, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %118)
  %120 = load i32*, i32** %3, align 8
  %121 = load i32, i32* @aW, align 4
  %122 = load i32, i32* @aW, align 4
  %123 = call i64 @IXmlWriter_WriteProcessingInstruction(i32* %120, i32 %121, i32 %122)
  store i64 %123, i64* %5, align 8
  %124 = load i64, i64* %5, align 8
  %125 = load i64, i64* @MX_E_ENCODING, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = load i64, i64* %5, align 8
  %129 = call i32 @ok(i32 %127, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %128)
  %130 = load i32*, i32** %3, align 8
  %131 = load i32, i32* @aW, align 4
  %132 = call i64 @IXmlWriter_WriteQualifiedName(i32* %130, i32 %131, i32* null)
  store i64 %132, i64* %5, align 8
  %133 = load i64, i64* %5, align 8
  %134 = load i64, i64* @MX_E_ENCODING, align 8
  %135 = icmp eq i64 %133, %134
  %136 = zext i1 %135 to i32
  %137 = load i64, i64* %5, align 8
  %138 = call i32 @ok(i32 %136, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %137)
  %139 = load i32*, i32** %3, align 8
  %140 = load i32, i32* @aW, align 4
  %141 = call i64 @IXmlWriter_WriteRaw(i32* %139, i32 %140)
  store i64 %141, i64* %5, align 8
  %142 = load i64, i64* %5, align 8
  %143 = load i64, i64* @MX_E_ENCODING, align 8
  %144 = icmp eq i64 %142, %143
  %145 = zext i1 %144 to i32
  %146 = load i64, i64* %5, align 8
  %147 = call i32 @ok(i32 %145, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %146)
  %148 = load i32*, i32** %3, align 8
  %149 = load i32, i32* @aW, align 4
  %150 = call i64 @IXmlWriter_WriteRawChars(i32* %148, i32 %149, i32 1)
  store i64 %150, i64* %5, align 8
  %151 = load i64, i64* %5, align 8
  %152 = load i64, i64* @MX_E_ENCODING, align 8
  %153 = icmp eq i64 %151, %152
  %154 = zext i1 %153 to i32
  %155 = load i64, i64* %5, align 8
  %156 = call i32 @ok(i32 %154, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %155)
  %157 = load i32*, i32** %3, align 8
  %158 = load i32, i32* @XmlStandalone_Yes, align 4
  %159 = call i64 @IXmlWriter_WriteStartDocument(i32* %157, i32 %158)
  store i64 %159, i64* %5, align 8
  %160 = load i64, i64* %5, align 8
  %161 = load i64, i64* @MX_E_ENCODING, align 8
  %162 = icmp eq i64 %160, %161
  %163 = zext i1 %162 to i32
  %164 = load i64, i64* %5, align 8
  %165 = call i32 @ok(i32 %163, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %164)
  %166 = load i32*, i32** %3, align 8
  %167 = load i32, i32* @aW, align 4
  %168 = call i64 @IXmlWriter_WriteStartElement(i32* %166, i32* null, i32 %167, i32* null)
  store i64 %168, i64* %5, align 8
  %169 = load i64, i64* %5, align 8
  %170 = load i64, i64* @MX_E_ENCODING, align 8
  %171 = icmp eq i64 %169, %170
  %172 = zext i1 %171 to i32
  %173 = load i64, i64* %5, align 8
  %174 = call i32 @ok(i32 %172, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %173)
  %175 = load i32*, i32** %3, align 8
  %176 = load i32, i32* @aW, align 4
  %177 = call i64 @IXmlWriter_WriteString(i32* %175, i32 %176)
  store i64 %177, i64* %5, align 8
  %178 = load i64, i64* %5, align 8
  %179 = load i64, i64* @MX_E_ENCODING, align 8
  %180 = icmp eq i64 %178, %179
  %181 = zext i1 %180 to i32
  %182 = load i64, i64* %5, align 8
  %183 = call i32 @ok(i32 %181, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %182)
  %184 = load i32*, i32** %3, align 8
  %185 = call i64 @IXmlWriter_Flush(i32* %184)
  store i64 %185, i64* %5, align 8
  %186 = load i64, i64* %5, align 8
  %187 = load i64, i64* @S_OK, align 8
  %188 = icmp eq i64 %186, %187
  %189 = zext i1 %188 to i32
  %190 = load i64, i64* %5, align 8
  %191 = call i32 @ok(i32 %189, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %190)
  ret void
}

declare dso_local i64 @IXmlWriter_SetOutput(i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IXmlWriter_WriteAttributeString(i32*, i32*, i32, i32*, i32) #1

declare dso_local i64 @IXmlWriter_WriteCData(i32*, i32) #1

declare dso_local i64 @IXmlWriter_WriteCharEntity(i32*, i32) #1

declare dso_local i64 @IXmlWriter_WriteChars(i32*, i32, i32) #1

declare dso_local i64 @IXmlWriter_WriteComment(i32*, i32) #1

declare dso_local i64 @IXmlWriter_WriteElementString(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i64 @IXmlWriter_WriteEndDocument(i32*) #1

declare dso_local i64 @IXmlWriter_WriteEndElement(i32*) #1

declare dso_local i64 @IXmlWriter_WriteEntityRef(i32*, i32) #1

declare dso_local i64 @IXmlWriter_WriteFullEndElement(i32*) #1

declare dso_local i64 @IXmlWriter_WriteName(i32*, i32) #1

declare dso_local i64 @IXmlWriter_WriteNmToken(i32*, i32) #1

declare dso_local i64 @IXmlWriter_WriteProcessingInstruction(i32*, i32, i32) #1

declare dso_local i64 @IXmlWriter_WriteQualifiedName(i32*, i32, i32*) #1

declare dso_local i64 @IXmlWriter_WriteRaw(i32*, i32) #1

declare dso_local i64 @IXmlWriter_WriteRawChars(i32*, i32, i32) #1

declare dso_local i64 @IXmlWriter_WriteStartDocument(i32*, i32) #1

declare dso_local i64 @IXmlWriter_WriteStartElement(i32*, i32*, i32, i32*) #1

declare dso_local i64 @IXmlWriter_WriteString(i32*, i32) #1

declare dso_local i64 @IXmlWriter_Flush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
